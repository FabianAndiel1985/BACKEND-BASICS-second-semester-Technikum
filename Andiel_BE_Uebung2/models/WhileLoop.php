<?php

class WhileLoop{
	private $sortedArray;

	public function __construct() {
        $this->sortedArray = array();   
    }

	public function sortArray(array $param1,$param2){
		$i=0;
		while( $i < sizeof($param1) && $param1[$i] != $param2) {
			array_push($this->sortedArray,$param1[$i]);
			$i++;
		}
		
		return $this->sortedArray;
	}

}