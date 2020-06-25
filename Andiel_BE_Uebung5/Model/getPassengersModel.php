<?php

class GetPassengersModel implements DataInterface { 
	private $dbGateway;
	private $query;

	public function __construct($flights_id){
  		$this->dbGateway = new DatabaseConnectionQueryService();
  		$this->query = "SELECT * FROM passengers p INNER JOIN flights f ON f.id = p.flights_id WHERE p.flights_id =".$flights_id; 	
	} 

	public function getData() {
		return $this->dbGateway->getData($this->query);
	}

}