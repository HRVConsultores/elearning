<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Coursemodel extends SB_Model 
{

	public $table = 'sc_course';
	public $primaryKey = 'id';

	public function __construct() {
		parent::__construct();
		
	}

	public static function querySelect(  ){
		
		
		return "   SELECT sc_course.* FROM sc_course   ";
	}
	public static function queryWhere(  ){
		
		return "  WHERE sc_course.id IS NOT NULL   ";
	}
	
	public static function queryGroup(){
		return "   ";
	}
	
}

?>
