<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Studentsmodel extends SB_Model 
{

	public $table = 'tb_users';
	public $primaryKey = 'id';

	public function __construct() {
		parent::__construct();
		
	}

	public static function querySelect(  ){
		
		
		return "   SELECT tb_users.* FROM tb_users   ";
	}
	public static function queryWhere(  ){
		
		return "  WHERE tb_users.id IS NOT NULL AND group_id = 3   ";
	}
	
	public static function queryGroup(){
		return "   ";
	}
	
}

?>
