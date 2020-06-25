<?php

class WhileLoop{
	private $resultArray;

	public function __construct() {
        $this->resultArray = array();   
    }

	public function showUntilLetter(array $characters,$finalLetter){
		$i=0;
		while( $i < sizeof($characters) && $characters[$i] != $finalLetter) {
			array_push($this->resultArray,$characters[$i]);
			$i++;
		}
		
		return $this->resultArray;
	}

}