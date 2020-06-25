<?php

class FlightsView {

	public function __construct() {
        header('Content-Type: application/json');
    }

	public function buildView($queryResultArray) {
		$flights = array();

		foreach ($queryResultArray as $value) {
			$flight= new \stdClass();
			$flight->flightId =  $value['id'];
			$flight->name =  $value['flightname'];
			$flight->url = "http://localhost/uebung5/index.php?action=GET-PASSENGERS&flightId=".$value['id'];
			$flights[]=$flight;
		}

		$flightsView =new \stdClass();
		$flightsView->flights = $flights;

		print_r(json_encode($flightsView ,JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
	}	
	
}