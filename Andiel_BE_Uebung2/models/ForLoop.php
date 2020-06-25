<?php

class ForLoop{
	private $sortedArray;

	public function __construct() {
        $this->sortedArray = array();   
    }

	public function sortArray(array $param1){
		for ($i = 0; $i < sizeof($param1); $i++) {
			if($i%2 != 0) {
				array_push($this->sortedArray,$param1[$i]);
			}
		}	
	
		return $this->sortedArray;	 
	}
	
}