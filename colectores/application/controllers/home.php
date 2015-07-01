<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

   var $uni_view = array();
   var $seccion;
	
	function __construct(){
		 parent::__construct();
      $this->load->library('form_validation');
      if (!$this->ion_auth->logged_in()){
         redirect('auth/login', 'refresh');
      }
      $this->load->model('unidades_m','unidades');
      $this->load->model('seccion_m','seccion');
   }
   
   public function index(){     
      $this->pag(0);
   }

   public function pag($str = NULL){
         $user_id = $this->session->userdata('user_id');
         $courseId = $this->session->userdata('courseId');   	
      if($str == 0){
         $this->load->model('examen_m','examen');


         $data['examen_aprobado'] = $this->examen->aprobado($user_id,$courseId);
         $data['encuesta_aprobado'] = $this->examen->surveyCompleted($user_id,$courseId);
         // debug($this->unidades->unidad_registrada(9999).'&& ('.!$this->examen->maxIntentosPermitidos($user_id).'||'.$this->examen->existeSinRendir($user_id).')');
		
         if($this->unidades->unidad_registrada(9999) && (!$this->examen->maxIntentosPermitidos($user_id,$courseId) || $this->examen->existeSinRendir($user_id,$courseId))){
           $data['permmitir_examen'] = true;
         }else{
           $data['permmitir_examen'] = false;
         }
         
         $data['resultados'] = $this->examen->existeCerradoExamen($user_id,$courseId);
      }

      $data['uniad_vista'] = $unidad_vista = $this->unidades->unidad_actual(); // integer

      $data['unidad_actual'] = $unidad_requerida = ($str || ($str == 0))?$str:$this->uri->segment(3);
      $seccion = $this->seccion->getOrden($unidad_requerida,$courseId);
      $firstUnitSlide = $this->seccion->getFirstModuleSlide($seccion->module,$courseId);
      $lastUnitSlide = $this->seccion->getLastModuleSlide($seccion->module,$courseId);
      $unitSlides = ($lastUnitSlide->order - $firstUnitSlide->order) + 1;
      $slide=($unidad_requerida-$firstUnitSlide->order) + 1; 
      
      //Restringe el acceso a unidades no vistas
      if($unidad_vista < $unidad_requerida && $seccion->type != 'modal'){
         $this->acceso_restringido($unidad_requerida);
         return;
      }

      switch ($seccion->type) {
         case 'indice':
            $data['unidades'] = $this->seccion->getIndice($seccion->module, $seccion->unit,$courseId);
            $data['secciones'] = $this->session->userdata('secciones');
            break;
         case 'evaluacion':
            $data['ev_css'] = $unidad_requerida.'_ev.css';
            $data['ev_js'] = $unidad_requerida.'_ev.js';
            break;
         case 'examen':            
            if($seccion->unit == 9999) 
               redirect('home/examen');
            break;
         case 'front':
            $data['secciones'] = $this->session->userdata('secciones');
            break;
         case 'unidad':
            $data['percentage'] = intval(((($unidad_requerida-$firstUnitSlide->order) + 1) * 100) / $unitSlides);
         case 'perfil':
            break;
      }

      $data['type'] = $seccion->type;
      $data['module'] = $seccion->module;
      $data['unit'] = $seccion->unit;
      $data['order'] = $seccion->order;      
      $data['titulo'] = $seccion->title;
      $data['pagina'] =  $seccion->page;
      $data['breadcrumb'] = $this->breadcrumb($seccion,$unitSlides,$slide);
      $data['navigation'] = $this->navigation($seccion->navigation, $unidad_requerida);
      $data['unidad_requerida'] = $unidad_requerida;
      //$data['debug'] = $this->ion_auth->is_admin();
      $this->load->view('template/'.$seccion->template,$data);
   }


   function registro_elemento($elemento_mirar){
      $unidad_vista = $this->unidades->unidad_actual(); // integer
      $courseId = $this->session->userdata('courseId');
      $seccion = $this->seccion->getOrden($elemento_mirar,$courseId);
      // debug($seccion,'registro_elemento');

      // Si el elemento ya fue vistado anteriormente, rediriga a la pagina sin tener que registrar.      
      if($unidad_vista >= $elemento_mirar)
         redirect('/home/pag/'.$elemento_mirar);
      
      // Si la unidad que desea ver no es la que sigue a la que tiene registrada, no podrá ser vista         
      if( ($unidad_vista +1) < $elemento_mirar && $seccion->type != 'modal' && $seccion->type != 'examen')
         redirect('home/acceso_restringido/'.$elemento_mirar);

      $this->unidades->registrar_unidad($elemento_mirar);
      
      // Mostrar el examen
      if($seccion->type == 'examen')
         redirect('home/examen');



      $this->pag($elemento_mirar);
   }

   public function examen(){
      
      $this->load->model('examen_m','examen');
      $user_id = $this->session->userdata('user_id');
      $courseId = $this->session->userdata('courseId');
      //echo "hola".$this->uri->segment(3, 0);
      if (!$this->examen->maxIntentosPermitidos($user_id,$courseId) ) {
         
         //$seccion = $this->seccion->getOrden($unidad_requerida,$courseId);
         $this->examen->crearExamen($user_id,$courseId);
      }
      // Comprueba si el examen esta cerrado. (ya realizo todos sus intentos)
      if ($this->examen->cerradoExamen($user_id,$courseId)) {
         $data['info'] = $this->examen->infoExamen($user_id,$courseId);
         // $this->load->view('examen/examen_finalizado', $data);
         $data['pagina'] =  'examen/examen_finalizado';
         $seccion = new stdClass();
         $seccion->template = 'index_int';
         $data['navigation'] = $this->navigation(-10,9999); //$this->navigation($seccion->navigation, $unidad_requerida);
         $data['unidad_requerida'] = 9999; //$seccion->orden;
      } else {
         $this->load->helper('format');
		 //echo $user_id;
         $data['preguntas'] = $this->examen->getPreguntas($user_id,$courseId);
         
		 // var_dump($vars['preguntas']);
         // die();
         // $this->load->view('examen/examen_1', $vars);

         $seccion = $this->seccion->getUnidad(9999,$courseId);
         $data['titulo'] = $seccion->title;
         $data['pagina'] =  $seccion->page;
         $unidad_requerida = $seccion->order;
         
         $data['navigation'] = $this->navigation($seccion->navigation, $unidad_requerida);
         
         $data['unidad_requerida'] = $unidad_requerida;
      }

         $data['breadcrumb'] = $this->breadcrumb(9999);
         //$data['debug'] = $this->ion_auth->is_admin();
         $this->load->view('template/'.$seccion->template,$data);
   }

   public function submit_examen(){  
         $this->load->model('examen_m','examen');
         $user_id = $this->session->userdata('user_id');
         $courseId = $this->session->userdata('courseId');
            // $vars['res'] = $this->config->item('res_url');

            if ($this->examen->maxIntentosPermitidos( $user_id,$courseId) && !$this->examen->existeSinRendir( $user_id,$courseId )) {
               $this->load->view('examen/error_examen');
            }
            if ($this->examen->cerradoExamen( $user_id,$courseId)) {
               $vars['info'] = $this->examen->infoExamen( $user_id,$courseId);
               $this->load->view('examen/examen_finalizado');
            } else {
               $preguntas = $this->examen->preguntasParaRevision( $user_id,$courseId);

               foreach ($preguntas as $p) {
                  switch ($p['type']) {
                     case 'vf':
                        $puntaje = 0;
                        $respuesta = '';
                        $aux = explode(',', $p['answer']);
                        $individual = $p['score'] / count($aux);
                        for ($i = 0; $i < count($aux); $i++) {
                           $respuesta .= $this->input->post('radio' . $p['id'] . '_' . $i) !== false ? $this->input->post('radio' .
                              $p['id'] . '_' . $i) : 2;
                           $respuesta .= ',';
                           if ($this->input->post('radio' . $p['id'] . '_' . $i) !== false && $this->input->post('radio' . $p['id'] . '_' .
                              $i) == $aux[$i]) {
                              $puntaje += $individual;
                           }
                        }
                        $respuesta = substr($respuesta, 0, -1);
                        $this->examen->registrarRespuesta( $user_id, $p['id'], $puntaje, $respuesta,$courseId);
                        break;

                     case 'alt':
                        $puntaje = 0;
                        $respuesta = $this->input->post('radio' . $p['id']) !== false ? $this->input->post('radio' . $p['id']):
                        '-1';
                        if ($this->input->post('radio' . $p['id']) !== false && $this->input->post('radio' . $p['id']) == $p['answer']) {
                           $puntaje = $p['score'];
                        }
                        $this->examen->registrarRespuesta( $user_id, $p['id'], $puntaje, $respuesta,$courseId);
                        break;

                     case 'alt2':
                        $puntaje = 0;
                        $respuesta = '';
                        $aux = explode('||', $p['alternative']);
                        $individual = $p['score'] / count($aux);
                        $aux2 = explode(',', $p['answer']);

                        for ($i = 0; $i < count($aux); $i++) {
                           if ($this->input->post('checkbox' . $p['id'] . '_' . $i) == 'on') {
                              $respuesta .= $i . ',';
                              $checked = true;
                           } else {
                              $checked = false;
                           }
                           if (($checked && in_array($i, $aux2)) || (!$checked && !in_array($i, $aux2))) {
                              $puntaje += $individual;
                           }
                        }
                        $respuesta = substr($respuesta, 0, -1);
                        $this->examen->registrarRespuesta( $user_id, $p['id'], $puntaje, $respuesta,$courseId);
                        break;

                     case 'ord':
                        $puntaje = 0;
                        $respuesta = '';
                        $aux = explode('||', $p['answer']);
                        $individual = $p['score'] / count($aux);

                        for ($i = 0; $i < count($aux); $i++) {
                           $respuesta .= $this->input->post('ord' . $p['id'] . '_' . $i) !== false ? $this->input->post('ord' . $p['id'] .
                              '_' . $i) : '-';
                           $respuesta .= ',';
                    //print_r($aux);
                    //exit();
                           $pos = explode('¬¬', $aux[$i]);
                           if ($this->input->post('ord' . $p['id'] . '_' . $i) !== false && $this->input->post('ord' . $p['id'] . '_' . $i) ==
                              $pos[0]) {
                              $puntaje += $individual;
                           }
                        }
                        $respuesta = substr($respuesta, 0, -1);
                        $this->examen->registrarRespuesta( $user_id, $p['id'], $puntaje, $respuesta,$courseId);
                        break;

                     case 'emp':
                        $puntaje = 0;
                        $respuesta = '';
                        $aux = explode('||', $p['respuestas']);
                        $individual = $p['score'] / count($aux);

                        for ($i = 0; $i < count($aux); $i++) {
                           $respuesta .= $this->input->post($p['id'] . '_' . $i) !== false ? strtoupper($this->input->post($p['id'] . '_' .
                              $i)) : '-';
                           $respuesta .= ',';
                    //print_r($aux);
                    //exit();
                           $pos = explode('¬¬', $aux[$i]);
                           if ($this->input->post($p['id'] . '_' . $i) !== false && $this->input->post($p['id'] . '_' . $i) == $pos[0]) {
                              $puntaje += $individual;
                           }
                        }
                        $respuesta = substr($respuesta, 0, -1);
                        $this->examen->registrarRespuesta( $user_id, $p['id'], $puntaje, $respuesta,$courseId);
                        break;
                  }
               }
               $this->examen->cerrarExamen( $user_id,$courseId);

               redirect('home/resultados');
            }
        
   }

   public function resultados(){
      $this->load->model('examen_m','examen');
      $user_id = $this->session->userdata('user_id');
      $courseId = $this->session->userdata('courseId');
      
         $vars['res'] = $this->config->item('res_url');
         if ($this->examen->existeCerradoExamen($user_id,$courseId)) {
            $data = $this->examen->resultadosResumen($user_id,$courseId);
            $vars['resultados'] = $data;
            
            if(!$this->examen->maxIntentosPermitidos($user_id,$courseId) || $this->examen->existeSinRendir($user_id,$courseId)){
               $vars['permmitir_examen'] = true;
            }else{
               $vars['permmitir_examen'] = false;
            }
         
            $vars['pagina'] = 'examen/resultados';
         } else {
            $vars['pagina'] = 'resultados_error';
         }
         $vars['navigation'] = $this->navigation(-10,9999);
         $vars['breadcrumb'] = $this->breadcrumb(9999);
        // $vars['debug'] = $this->ion_auth->is_admin();
         $this->load->view('template/index_int',$vars);
      
   }

   public function certificado(){
      $this->load->model('examen_m','examen');
      $courseId = $this->session->userdata('courseId');
      $this->load->model('ion_auth_model','ion_auth_m');
      $this->ion_auth->select('name');
      $user = $this->ion_auth_m->user()->row();
      $url = FCPATH.'resources/img_curso/certificate/certificado.jpg';$space = '                                 ';

         //$data = $this->examen->resultadoCertificado($user->id,$courseId);
         $data = $this->examen->resultadoEncuesta($user->id,$courseId);
         $this->load->library('pdf');
         $this->pdf->SetSubject('FAO: Registro de Plaguicidas Químicos de uso Agrícola - PQUA');
         $this->pdf->SetKeywords('FAO, Registro de Plaguicidas Químicos de uso Agrícola - PQUA');
         $this->pdf->AddPage();
         $this->pdf->Image($url, 6.5, 4, 371.86, 282.58, 'JPEG');
         $this->pdf->SetFont('times', 'BI', 38);
         $this->pdf->Cell(50, 147,  $space.$user->name . ' ' . $user->fatherlastname. ' ' . $user->motherlastname, 0, 1, 'C');
		 //$this->pdf->SetFont('helvetica', '', 10);
         //$this->pdf->Text(0, 128, iso2txt(substr($data->fecha,0,10)), false, false, true, 0, 0, 'C');
         $this->pdf->Output('certificado.pdf', 'D');
   }

   public function informacion(){
      $data['pagina'] = 'informacion';
      
      $data['navigation'] =  $this->navigation(-1,0);
      $this->load->view('template/index', $data, FALSE);
   }


   public function mantenimiento(){
      $this->load->view('mantenimiento');
   }

   public function acceso_restringido($unidad){
      // show_error('Aun o tiene permiso para ver esta unidad');
      $data['pagina'] = 'acceso_denegado';
      $data['unidad_acceso'] = $unidad;
      $data['unidad_actual'] =  $this->unidades->unidad_actual();
      // $data['unidades'] = $this->uni_view;

      $this->load->view('template/index',$data);
   }
   
   private function navigation($navigation,$unidad_requerida){
      switch ($navigation) {
            case 1:
               $out = $unidad_requerida.','.$navigation;
               break;
            case -1:
               $out = -$unidad_requerida;
               break;
            case -10:
               $out = $unidad_requerida.',false';;
               break;
            default:
               $out = $unidad_requerida;
               break;
         }
         return $out;
   }

   private function breadcrumb($seccion,$unitSlides,$slide){      
      // If is not exam
      if($seccion != 9999){ 

         //$unitIndex = $this->seccion->getByUnit($seccion->unit, $seccion->sc_course_id);
         $moduleIndex = $this->seccion->getByModule($seccion->module, $seccion->sc_course_id);
         
         $breadcrumb['cantidad'] = $unitSlides;
         $breadcrumb['pagina'] = $slide;
         $breadcrumb['modulo']['num'] =  $seccion->module;
		 $breadcrumb['modulo']['title'] =  $seccion->title;
         $breadcrumb['modulo']['indice'] = $moduleIndex->order;			 
		   /*$breadcrumb['unidad']['num'] =  $seccion->unit;
         $breadcrumb['unidad']['indice'] = $unitIndex->order;*/
      }else{ // Exam

         $breadcrumb['cantidad'] = 1;
         $breadcrumb['pagina'] = 1;
         $breadcrumb['modulo']['num'] =  'Examen';
         $breadcrumb['modulo']['indice'] = 0;
      }

      return $breadcrumb;
   }
}