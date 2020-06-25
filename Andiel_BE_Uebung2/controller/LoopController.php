<?php

class LoopController{

	private $characters;
	private $loopObjects;
	private $jsonView;

	public function __construct() {

        $this->characters = array(); 
        $this->loopObjects = array();
        $this->jsonView = new JsonView();
      
        $this->createCharactersArray();  
        $this->createLoopObjectsArray();
    }


    private function createCharactersArray() {
    	$charactersArray = file_get_contents("data/alphabetArray.json");
    	$rawCharacters = json_decode($charactersArray); 
        foreach ($rawCharacters->alphabet as $letters)
            {
                array_push($this->characters,$letters);
            };
    }

    private function createLoopObjectsArray() {
        $forLoopModel = new ForLoop();
        $forEachLoopModel = new ForEachLoop();
        $whileLoopModel = new WhileLoop(); 

        array_push($this->loopObjects,$forLoopModel);
        array_push($this->loopObjects,$forEachLoopModel);
        array_push($this->loopObjects,$whileLoopModel);
       
    }


    public function route() {

        
        if( isset($_GET['loopType']) && isset($_GET['until']) ) {
            $loopName = strtoupper($_GET['loopType']);
            $finalLetter = strtoupper($_GET['until']);
            
            if($loopName  == "UNTIL" && in_array($finalLetter, $this->characters))
            {  
                $loopObject = $this->loopObjects[2];
                $resultArray = $loopObject->showUntilLetter($this->characters,$finalLetter);

                $this->prepareResult($loopName,$resultArray);
            } 

            else {
                $error = array(
                "ERROR" => "Invalid combination of parameters."
                );

                 $this->jsonView->streamOutput($error);

                 return false;
            }


        }

        elseif (isset($_GET['loopType'])) {
            $loopName = strtoupper($_GET['loopType']);
            $resultArray=[];

            if($loopName == "EVEN") {
                $loopObject = $this->loopObjects[0];
                $resultArray =  $loopObject->showEverySecondChar($this->characters);
            }
            
            elseif ($loopName == "REVERSE") {
                $loopObject = $this->loopObjects[1];
                $resultArray =  $loopObject->sortArray($this->characters);  
            } 

            elseif ($loopName == "UNTIL") {
                 $error = array(
                "ERROR" => "Loop ".$loopName." needs an additional until parameter."
                );
                 $this->jsonView->streamOutput($error);
                 return false;
            }

            else {
                 $error = array(
                "ERROR" => "Loop type not found ".$loopName." ."
                );
                 $this->jsonView->streamOutput($error);
                 return false;
            } 

            $this->prepareResult($loopName,$resultArray);
        }

        else {
            $error = array(
                "ERROR" => "Please set loopType and until parameter correctly"
                );
                 $this->jsonView->streamOutput($error);
                 return false;  
        }

    }


    private function prepareResult($loopName,array $resultArray) {
        $prepardedResult = new \stdClass();
        $prepardedResult->loopName = $loopName;
        $prepardedResult->array = $resultArray;

        $this->jsonView->streamOutput($prepardedResult);
    }

}