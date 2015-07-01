<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Preguntas_m extends CI_Model {
	var $table;
	public function __construct()
	{
		parent::__construct();
		$this->_table = 'question';

		//Do your magic here
	}

	public function crearPreguntasExamen(/*$unit*/)
    	{
    		$indexes = array();
    		$this->load->database();
    		$courseId = $this->session->userdata('courseId');
    		// $query = $this->db->query('SELECT id FROM fa_preguntas WHERE id > 46 AND id < 50 ORDER BY RAND()');
    		
    		//$this->db->select('id')->from($this->_table)->order_by('id','RANDOM');
    		$this->db->select('id')->from($this->_table)->where('sc_course_id',$courseId)->order_by('id','RANDOM');
            //$this->db->select('id')->from($this->_table)->where('sc_course_id',$courseId)/*->where('unit',$unit)*/->order_by('id','RANDOM');
    		foreach ($this->db->get()->result_array() as $row) {
    			array_push($indexes, $row['id']);
    		}
    		
    		return $indexes;
    	}

}

/* End of file unidades.php */
/* Location: ./application/models/unidades.php */