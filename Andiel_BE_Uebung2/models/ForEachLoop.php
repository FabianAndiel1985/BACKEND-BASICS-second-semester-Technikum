<?php

class ForEachLoop{
	private $sortedArray;

	public function __construct() {
        $this->sortedArray = array();   
    }

	public function sortArray(array $param1){
		foreach($param1 as $letter) {
 			array_unshift($this->sortedArray,$letter);
		}
		
		return $this->sortedArray;
	}
	
}