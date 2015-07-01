<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Seccion_m extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->_table = 'seccion';

		//Do your magic here
	}

	public function crear(){

	}

	public function listar($courseId){
		$this->db->from($this->_table)->where('sc_course_id',$courseId)->order_by('order','asc');
		return $this->db->get()->result();
	}

	public function get($id,$courseId){
		return $this->db->from($this->_table)->where('id',$id)->where('sc_course_id',$courseId)->get()->row();
	}

	public function set($id, $data){
		return $this->db->where('id',$id)->update($this->_table, $data);
	}

	public function getOrden($orden,$courseId){
		return $this->db->from($this->_table)->where('order',$orden)->where('sc_course_id',$courseId)->get()->row();
	}

	public function getEstado($id,$courseId){
		return $this->db->select('estado')->from($this->_table)->where('id',$id)->where('sc_course_id',$courseId)->get()->row()->estado;
	}
	public function setEstado($id,$estado,$courseId){
		return $this->db->where('id',$id)->where('sc_course_id',$courseId)->update($this->_table, array('state'=>$estado));
	}

	public function getIndice($modulo, $unidad, $courseId){
		return $this->db->from($this->_table)->where('module',$modulo)->where('unit',$unidad)->where('index',1)->where('sc_course_id',$courseId)->order_by('order','asc')->get()->result();
	}
	public function setIndice($id,$estado,$courseId){
		return $this->db->where('id',$id)->where('sc_course_id',$courseId)->update($this->_table, array('index'=>$estado));
	}

	public function getUnidad($unidad,$courseId){
		return $this->db->from($this->_table)->where('unit',$unidad)->where('sc_course_id',$courseId)->get()->row();
	}
	public function getFirstUnitSlide($unit,$courseId){
			return $this->db->from($this->_table)->where('type','unidad')->where('unit',$unit)->where('sc_course_id',$courseId)->order_by('id','asc')->limit(1)->get()->row();
	}
	public function getLastUnitSlide($unit,$courseId){
		return $this->db->from($this->_table)->where('type','unidad')->where('unit',$unit)->where('sc_course_id',$courseId)->order_by('id','desc')->limit(1)->get()->row();
	}
	public function getFirstModuleSlide($unit,$courseId){		
			return $this->db->from($this->_table)->where('type','unidad')->where('module',$unit)->where('sc_course_id',$courseId)->order_by('id','asc')->limit(1)->get()->row();
	}
	public function getLastModuleSlide($unit,$courseId){
		return $this->db->from($this->_table)->where('type','unidad')->where('module',$unit)->where('sc_course_id',$courseId)->order_by('id','desc')->limit(1)->get()->row();
	}
	public function countSlides($courseId){
		return $this->db->from($this->_table)->where('sc_course_id',$courseId)->count_all_results();
	}

	public function count(){
		return $this->db->count_all($this->_table);
	}

	public function listSeccionEstado($idreferencia = 'order'){
		$subQuery = $this->db->select('`id`')->from('log as l')->where('l.`sc_student_id`',$this->session->userdata('user_id'))->where('l.`sc_course_id`',$this->session->userdata('courseId'))->where('l.`unit` =  `s`.`order`')->get_compiled_select();
        $data = $this->db->select('`s`.*, ( '. $subQuery .' ) AS registro FROM (`au_seccion` AS s) WHERE `s`.`sc_course_id` = ' . $this->session->userdata('courseId') . ' ORDER BY `order` ASC')->get()->result();
		foreach ($data as $value) {
			$temp[$value->$idreferencia] = $value;
		}
		return $temp;
	}

	public function getByModule($module, $courseId){
		return $this->db->from($this->_table)->where('module',$module)->where('type','indice')->where('sc_course_id',$courseId)->get()->row();
	}
	public function getByUnit($unit, $courseId){
		return $this->db->from($this->_table)->where('unit',$unit)->where('type','indice')->where('sc_course_id',$courseId)->get()->row();
	}
}

/* End of file seccion_m.php */
/* Location: ./application/models/seccion_m.php */