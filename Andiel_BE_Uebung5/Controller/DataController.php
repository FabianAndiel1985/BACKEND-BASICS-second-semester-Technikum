<?php

class DataController {

    private $dataModel;
    private $dataValidator;
    private $dataView;

    public function __construct(){
      $this->dataValidator = new Validator();
    }  

    public function route() {

      if($this->dataValidator->validate() == true && !is_string($this->dataValidator->validate())) {
        
        $this->buildResultsWithValidInput();

      }

      elseif (is_string($this->dataValidator->validate())) {
        echo $this->dataValidator->validate();
      }
   }


   private function buildResultsWithValidInput() {

      $this->checkInputParameters();
      
      if(!empty($this->dataModel)) {
         $queryResultArray = $this->dataModel->getData();
         $this->dataView->buildView($queryResultArray);
      }

   }

   

   private function checkInputParameters() {
   	  $action = strtoupper((filter_input(INPUT_GET, "action", FILTER_SANITIZE_STRING)));

   		switch ($action) {

   			case 'GET-FLIGHTS':
   				$this->dataModel = new GetFlightsModel();
          $this->dataView = new FlightsView();
   				break;

        case 'GET-PASSENGERS':
          $flightId = filter_input(INPUT_GET, "flightId",  FILTER_SANITIZE_NUMBER_INT);
          $this->dataModel = new GetPassengersModel($flightId);
          $this->dataView = new PassengerView();
          break;
   			
   			default:
   				echo "Please enter valid parameters";
   				break;
   		}


   }

}