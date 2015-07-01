<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Enrolmentmodel extends SB_Model 
{

	public $table = 'pv_enrolment';
	public $primaryKey = 'id';

	public function __construct() {
		parent::__construct();
		
	}

	public static function querySelect(  ){
		
		
		return "   SELECT pv_enrolment.* FROM pv_enrolment   ";
	}
	public static function queryWhere(  ){
		
		return "  WHERE pv_enrolment.id IS NOT NULL   ";
	}
	
	public static function queryGroup(){
		return "   ";
	}
	
}

?>
