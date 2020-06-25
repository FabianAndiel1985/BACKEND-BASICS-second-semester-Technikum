<?php

class DatabaseConnectionQueryService{

	private $db;

	public function __construct(){
	  $this->db = new PDO("mysql:host=localhost;dbname=backend_basics_hausuebung5", "root", "");
	} 

	public function getData($sqlQuery) {
		
		$queryResult = array();
		
		foreach ($this->db->query($sqlQuery) as $row) {
   			$queryResult[]=$row;
		}
		
		return $queryResult;
	}
	

}
