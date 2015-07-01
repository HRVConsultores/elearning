<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Unidades_m extends CI_Model {
	var $table;
	public function __construct()
	{
		parent::__construct();
		$this->_table = 'log';

		//Do your magic here
	}

	function registrar_unidad($unidad){
		$user_id = $this->session->userdata('user_id');
		$courseId = $this->session->userdata('courseId');
		$time = date("Y-m-d H:i:s");
		$data = array(
			'sc_student_id'=>$user_id,
			'sc_course_id'=>$courseId,
			'unit'=>$unidad,
			'created_at'=>$time,
			'updated_at'=>$time 
			);

		$control = $this->db->insert($this->_table,$data);

		if($unidad>1){
			$this->db->where('sc_student_id',$user_id);
			$this->db->where('sc_course_id',$courseId);
			$this->db->where('unit',$unidad-1);
			$this->db->set('updated_at',$time);
			$control = $this->db->update($this->_table);
		}
		return $control;
	}

	function unidad_actual(){
		$this->db->select('unit')
			->from($this->_table)
			->where('sc_student_id',$this->session->userdata('user_id'))
			->where('sc_course_id',$this->session->userdata('courseId'))
			->where('unit <','9000')
			->order_by('unit','desc');
			
		$data = $this->db->get()->row();
		if(empty($data)){

			$this->registrar_unidad(1);
			return 1;
		}

		return $data->unit;
	}

	function unidad_registrada($id){
		return $this->db->from($this->_table.' l')
						->join('seccion s','s.order = l.unit and l.sc_course_id = s.sc_course_id')
						->where('l.sc_student_id',$this->session->userdata('user_id'))
					  ->where('l.sc_course_id',$this->session->userdata('courseId'))
						->where('s.unit',$id)->count_all_results();
	}
}

/* End of file unidades.php */
/* Location: ./application/models/unidades.php */