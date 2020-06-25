<?php 
	class Validator {

		public function validate() {
			
			if (isset($_GET['action'])) {
				return $this->checkActionParameter();
			}

			else {
				return "Please set an action parameter";
			}

		}

		private function checkActionParameter() {
			if ($_GET['action'] == "") {
				return "Please set the action to either GET-FLIGHTS or GET-PASSENGERS";
			}

			elseif (strtoupper((filter_input(INPUT_GET, "action", FILTER_SANITIZE_STRING))) == "GET-FLIGHTS") {
				return true;
			} 

			elseif (strtoupper((filter_input(INPUT_GET, "action", FILTER_SANITIZE_STRING))) == "GET-PASSENGERS") {
				return $this->checkFlightId();
			} 

			elseif (!(strtoupper((filter_input(INPUT_GET, "action", FILTER_SANITIZE_STRING))) == "GET-FLIGHTS" || strtoupper((filter_input(INPUT_GET, "action", FILTER_SANITIZE_STRING))) == "GET-PASSENGERS")) {	
				return " Action paremeter has to be either GET-FLIGHTS or GET-PASSENGERS";
			}
		}

		private function checkFlightId () {
			if(isset($_GET['flightId'])) {
				return $this->checkFlightIDNumber();
			}

			else {
				return " With GET-PASSENGERS you have to set the flight id parameter";
			}
		}

		private function checkFlightIDNumber() {
			if( $_GET["flightId"] >= 1  && $_GET["flightId"] <= 5 )
				{
					return true;
				}
			else {
				return "The flight id has to be between 1 and 5";
			}
		}
	}
	