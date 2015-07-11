<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Availablemodel extends SB_Model 
{

	public $table = 'pv_enrolment';
	public $primaryKey = 'id';

	public function __construct() {
		parent::__construct();
		
	}

	public static function querySelect(  ){
		
		
		return "  SELECT DISTINCT pv_enrolment.* FROM pv_enrolment LEFT JOIN sc_course ON sc_course.id = pv_enrolment.courseId  ";
	}
	public static function queryWhere(  ){
		
		return " WHERE pv_enrolment.id IS NOT NULL AND sc_course.valid = 'Y'   ";
	}
	
	public static function queryGroup(){
		return "   ";
	}
	
}

?>
