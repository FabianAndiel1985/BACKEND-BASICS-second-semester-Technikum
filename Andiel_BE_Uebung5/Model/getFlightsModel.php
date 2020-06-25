<?php

class GetFlightsModel implements DataInterface { 
	private $dbGateway;
	private $query="SELECT * from FLIGHTS";

	public function __construct(){
  		$this->dbGateway = new DatabaseConnectionQueryService();	
	} 

	public function getData() {
		return $this->dbGateway->getData($this->query);
	}

} 
