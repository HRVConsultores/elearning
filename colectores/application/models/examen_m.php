<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Examen_m extends CI_Model {
	var $table;
	public function __construct()
	{
		parent::__construct();
		$this->_table = 'exam';

		//Do your magic here
	}

	public function crearExamen($usuario,$courseId)
        {
            $CI =&get_instance();
            $CI->load->model('preguntas_m','preguntas');

            if(!$this->existeSinRendir($usuario,$courseId)){
                $preguntas = $CI->preguntas->crearPreguntasExamen();
                $date =  $date = date("Y-m-d H:i:s");
                $e = new stdClass();
                $e->sc_student_id = $usuario;
                $e->sc_course_id = $courseId;
                $e->created_at = $date;
                $e->updated_at = $date;
                $this->db->insert($this->_table,$e);
                
                $idExam = $this->db->insert_id();	                
                
                $i = 0;
                foreach ($preguntas as $pregunta) {  //Ver si es necesario un orden	
	                $qe = new stdClass();
	                $qe->au_exam_id = $idExam;
	                $qe->au_question_id = $pregunta;
	                //$qe->au_question_id = $preguntas[$i];
	                $qe->order = $i+1;
	                $this->db->insert("exam_has_au_question",$qe);
	                $i++;
                }                
                
            }
            return true;
        }

        public function existeExamen($usuario)
        {
            // $query = $this->db->query('SELECT id FROM cli2_examen WHERE usuario = ' . $usuario . ' LIMIT 1');
            // if ($query->num_rows() > 0)
            //     return true;
            // else
            //     return false;
            return $this->db->where('usuario',$usuario)->count_all_results($this->_table);
        }
        
        public function maxIntentosPermitidos($usuario,$courseId)
        {
            // if ($num >= INTENTOS_PERMITIDOS)
            //     return true;
            // else
            //     return false;
            
            $num = $this->db->where('sc_student_id',$usuario)->where('sc_course_id',$courseId)->count_all_results($this->_table);
            //var_dump($this->db->last_query()); 
            return ($num>=INTENTOS_PERMITIDOS);
        }
        
        
        public function existeSinRendir($usuario,$courseId){
            // $query = $this->db->query('SELECT id FROM cli_examen WHERE usuario = ' . $usuario . ' AND nf IS NULL LIMIT 1');
            // if ($query->num_rows() > 0)
            //     return true; 
            // else
            //     return false;

            return $this->db->where('sc_student_id',$usuario)->where('sc_course_id',$courseId)->where('grade IS NULL', null, false)->count_all_results($this->_table);
            //var_dump($this->db->last_query()); 
           
        }
        
        public function getPreguntas($usuario,$courseId)
        {
            $output = array();
           //echo 'SELECT q.au_question_id FROM au_exam e INNER JOIN au_exam_has_au_question q ON e.id = q.au_exam_id WHERE e.sc_student_id = ' . $usuario . ' AND e.sc_course_id = ' . $courseId . ' AND e.grade IS NULL'; exit;
            $query = $this->db->query('SELECT q.au_question_id FROM au_exam e INNER JOIN au_exam_has_au_question q ON e.id = q.au_exam_id WHERE e.sc_student_id = ' . $usuario . ' AND e.sc_course_id = ' . $courseId . ' AND e.grade IS NULL ORDER BY q.order');
			echo $query;
            $row = $query->result_array();

            for ($i = 0; $i < PREGUNTAS_EXAMEN; $i++) {
            			//if( $row['q' . $i] != ''){
            			if( $row[$i]['au_question_id'] != ''){
                		$query2 = $this->db->query('SELECT id, unit, type, label, options, alternative, answer, score FROM au_question WHERE id=' .
                    $row[$i]['au_question_id']);

                		$output[] = $query2->row_array();

                		unset($query2);
                	}
            }
					
            unset($query);
            return $output;
        }

        public function cerradoExamen($usuario,$courseId)
        {
        		$query = $this->db->query('SELECT id FROM au_exam WHERE sc_student_id = ' . $usuario . ' AND sc_course_id = ' . $courseId . ' AND grade IS NOT NULL LIMIT '.INTENTOS_PERMITIDOS);
            if ($query->num_rows() >= INTENTOS_PERMITIDOS)
                return true; // si esta cerrado todas las posibilidades
            else
                return false; // existe uno abierto.
        }
        
        public function existeCerradoExamen($usuario,$courseId)
        {
            $query = $this->db->query('SELECT id FROM au_exam WHERE sc_student_id = ' . $usuario . ' AND sc_course_id = ' . $courseId . '  AND grade IS NOT NULL LIMIT '.INTENTOS_PERMITIDOS);
            if ($query->num_rows() > 0)
                return true; // si esta cerrado todas las posibilidades
            else
                return false; // existe uno abierto.
        }

        public function infoExamen($usuario,$courseId)
        {
            $query = $this->db->query('SELECT id FROM au_exam WHERE sc_student_id = ' . $usuario . ' AND sc_course_id = ' . $courseId . ' LIMIT 1');
            if ($query->num_rows() > 0)
                return $query->result_array();
            else
                return false;
        }

        public function preguntasParaRevision($usuario,$courseId)
        {
            $output = array();
            //echo 'SELECT '.$this->_getCodePreguntas('q',',').' FROM cli_examen WHERE usuario = ' . $usuario . ' AND courseId = ' . $courseId . '  AND nf IS NULL LIMIT 1';
            $query = $this->db->query('SELECT q.au_question_id FROM au_exam e INNER JOIN au_exam_has_au_question q ON e.id = q.au_exam_id WHERE e.sc_student_id = ' . $usuario . ' AND e.sc_course_id = ' . $courseId . ' AND e.grade IS NULL ORDER BY q.order');
            //$query = $this->db->query('SELECT '.$this->_getCodePreguntas('q',',').' FROM cli_examen WHERE usuario = ' . $usuario . ' AND courseId = ' . $courseId . '  AND nf IS NULL LIMIT 1');
            $row = $query->result_array();
            for ($i = 0; $i < PREGUNTAS_EXAMEN; $i++) {
         			if( $row[$i]['au_question_id'] != ''){
                		$query2 = $this->db->query('SELECT id, unit, type, label, options, alternative, answer, score FROM au_question WHERE id=' .
                    $row[$i]['au_question_id']);
		                $output[] = $query2->row_array();
    		            unset($query2);
              }
            }
            
            unset($query);
            return $output;
        }

        public function registrarRespuesta($usuario, $q, $puntaje, $respuesta,$courseId)
        {
            $puntaje = round($puntaje, 2);
            $query = $this->db->query("UPDATE au_exam_has_au_question qe INNER JOIN au_exam e ON qe.au_exam_id = e.id SET qe.score = {$puntaje}, qe.answer = '{$respuesta}' WHERE e.sc_student_id = {$usuario} AND e.sc_course_id = {$courseId}  AND qe.au_question_id = {$q} AND e.grade IS NULL");
           // $query = $this->db->query("UPDATE cli_examen SET p{$q} = {$puntaje}, r{$q} = '{$respuesta}' WHERE usuario = {$usuario} AND courseId = " . $courseId . "  AND nf IS NULL LIMIT 1");
            if ($this->db->affected_rows() == 1) {
                return true;
            } else {
                return false;
            }
        }

        public function cerrarExamen($usuario,$courseId)
        {
            $counter = 0;
            /*$query = $this->db->query('SELECT '.$this->_getCodePreguntas('p',',').' FROM cli_examen WHERE usuario = ' .
                $usuario . ' AND courseId = ' . $courseId . '  AND nf IS NULL LIMIT 1');
            for ($i = 1; $i <= PREGUNTAS_EXAMEN; $i++) {
                $counter += $row['p' . $i];
            } */

						$query = $this->db->query('SELECT sum(q.score) as counter FROM au_exam e INNER JOIN au_exam_has_au_question q ON e.id = q.au_exam_id WHERE e.sc_student_id = ' . $usuario . ' AND e.sc_course_id = ' . $courseId . ' AND e.grade IS NULL ');
            $row = $query->row_array();
            
            if($row['counter'] != ''){
            	$counter = $row['counter']; 
            }
            
            unset($query);
            $punto_aprobacion = TOTAL_PUNTOS * (PORCENTAJE_APROBACION / 100);
            
            $nf = ((float) $punto_aprobacion <= (float) $counter) ? 1 : 0;
            $date =  $date = date("Y-m-d H:i:s");
            $query = $this->db->query("UPDATE au_exam SET score = ".$counter.", grade = {$nf}, updated_at = '$date' WHERE sc_student_id = {$usuario} AND sc_course_id = " . $courseId . "  AND grade IS NULL ");
            // $r = new Registro();
            // $r->usuario = $usuario;
            // $r->unidad = 11;
            // $r->save();
            // $query = $this->db->query("UPDATE cli_registro SET updated_at = NOW() WHERE usuario=$usuario AND unidad=10 AND created_at = updated_at LIMIT 1");
            if ($this->db->affected_rows() == 1) {
                return true;
            } else {
                return false;
            }
        }

        public function getRespuestas($usuario)
        {
            $output = array();
            $query = $this->db->query('SELECT * FROM cli2_examen WHERE usuario = ' . $usuario . ' LIMIT 1');
            $row = $query->row_array();
            for ($i = 1; $i <= PREGUNTAS_EXAMEN; $i++) {
                $query2 = $this->db->query("SELECT id, unidad, tipo, rotulo, opciones, alternativas, respuestas, puntaje, 'p{$i}' as upuntaje, 'r{$i}' as urespuesta FROM cli2_preguntas WHERE id=" .
                    $row['q' . $i]);
                $output[] = $query2->row_array();
                unset($query2);
            }

            unset($query);
            return array($row['nf'], $row['updated_at'], $output);
        }
      
      public function aprobado($usuario,$courseId){
            $query = $this->db->query('SELECT id FROM au_exam WHERE sc_student_id = ' . $usuario . ' AND sc_course_id  = ' . $courseId . ' AND grade = 1 LIMIT 1');
        if ($query->num_rows() > 0)
                return true;
            else
                return false;
      }
      
      public function surveyCompleted($usuario,$courseId){
            $query = $this->db->query('SELECT id FROM au_log WHERE sc_student_id = ' . $usuario . ' AND sc_course_id  = ' . $courseId . ' AND unit = 721 LIMIT 1');
        if ($query->num_rows() > 0)
                return true;
            else
                return false;
      }
      
      public function resultadosResumen($usuario,$courseId){
        $query = $this->db->query('SELECT * FROM au_exam WHERE sc_student_id = ' . $usuario . ' AND sc_course_id = ' . $courseId . '  AND grade IS NOT NULL  ORDER BY ID LIMIT '.INTENTOS_PERMITIDOS);
        $row = $query->result();
        foreach($row as $r){
            $output = new stdClass();
            $output->fecha = datetime2screen($r->updated_at);
            $output->score = $r->score;
            $output->estado = $r->grade == 1 ? 'Aprobado' : 'Reprobado';
            $query = $this->db->query('SELECT eq.au_question_id, eq.score as score_answer, q.score as score_question FROM au_exam e INNER JOIN au_exam_has_au_question eq ON e.id = eq.au_exam_id INNER JOIN au_question q ON eq.au_question_id = q.id WHERE e.sc_student_id = ' . $usuario . ' AND e.sc_course_id = ' . $courseId . ' AND e.grade IS NOT NULL ORDER BY eq.order');
            $row = $query->result_array();
            //print_r($row); exit;
           
            //for ($i = 1; $i <= PREGUNTAS_EXAMEN; $i++) {
            $i = 0;
            foreach ($row as $question){
                $output->preguntas[$i]['q'] = $i+1;
                $output->preguntas[$i]['p'] = $question['score_answer'];
                $output->preguntas[$i]['t'] = $question['score_question'];

              	$i++;
            }
            $temp[] = $output;
        }

        return $temp;
      }
      
	  public function resultadoEncuesta($usuario,$courseId){
            $query = $this->db->query('SELECT updated_at FROM au_log WHERE sc_student_id = ' . $usuario . ' AND sc_course_id = ' . $courseId. ' AND unit = 721');
            $row = $query->row();
            $row->fecha = $row->updated_at;
            
            return $row;
      }
	  
	  
      public function resultadoCertificado($usuario,$courseId){
            $query = $this->db->query('SELECT max(score),updated_at FROM au_exam WHERE sc_student_id = ' . $usuario . ' AND sc_course_id = ' . $courseId);
            $row = $query->row();
            $row->fecha = $row->updated_at;
            
            return $row;
      }

      private function _getCodePreguntas($letra, $separador){
        $out = '';
        for ($i=1; $i<=PREGUNTAS_EXAMEN ; $i++) { 
            $out .= $letra.$i.$separador;
        }
        $out = substr($out,0, -1);
        return $out;
      }
}

/* End of file unidades.php */
/* Location: ./application/models/unidades.php */
