<?php

class ForLoop{
	private $resultArray;

	public function __construct() {
        $this->resultArray = array();   
    }

	public function showEverySecondChar(array $characters){
		for ($i = 0; $i < sizeof($characters); $i++) {
			if($i%2 != 0) {
				array_push($this->resultArray,$characters[$i]);
			}
		}	
	
		return $this->resultArray;	 
	}
	
}