<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Studentsmodel extends SB_Model 
{

	public $table = 'sc_student';
	public $primaryKey = 'id';

	public function __construct() {
		parent::__construct();
		
	}

	public static function querySelect(  ){
		
		
		return "   SELECT sc_student.* FROM sc_student   ";
	}
	public static function queryWhere(  ){
		
		return "  WHERE sc_student.id IS NOT NULL   ";
	}
	
	public static function queryGroup(){
		return "   ";
	}
	
}

?>
