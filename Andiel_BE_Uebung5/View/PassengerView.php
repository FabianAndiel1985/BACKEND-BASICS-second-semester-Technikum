<?php

class PassengerView {

	public function __construct() {
        header('Content-Type: application/json');
    }


	public function buildView($queryResultArray) {
		$passengers = array();

		foreach ($queryResultArray as $value) {
			$passenger= new \stdClass();
			$passenger->lastname =  $value['lastname'];
			$passenger->firstname =  $value['firstname'];
			$passengers[]=$passenger;
		}

		$passengersView =new \stdClass();
		$passengersView->flightName = $queryResultArray[0]['flightname'];
		$passengersView->passengers = $passengers;

		print_r(json_encode($passengersView ,JSON_PRETTY_PRINT));
	}	


}