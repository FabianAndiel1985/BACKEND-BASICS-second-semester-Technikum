<?php

class ShoppingCartModel{

	function addItemToCart($item) {
	 	$articleInCart = $this->checkArticleInCart($item);

	 	if($articleInCart) {
	 		$indexOfArticle = $this->getIndexOfArticle($item);
	 		$_SESSION["articles"][$indexOfArticle]->amount++;
	 		$answer = json_encode($this->buildAnswer("OK"));
			return $answer;

	 	}

	 	else {
	 		$_SESSION["articles"][] = new Article($item);
	 		$answer = json_encode($this->buildAnswer("OK"));
			return $answer;
	 	}
	}


	function removeItemFromCart($item) {
	 	$articleInCart = $this->checkArticleInCart($item);
		
		if($articleInCart) {
			$indexOfArticle = $this->getIndexOfArticle($item);
			$this->reduceOrRemoveArticle($indexOfArticle);
			$answer = json_encode($this->buildAnswer("OK"));
			return $answer;
		}

		else {
			$answer = json_encode($this->buildAnswer("ERROR"));
			return $answer;
		}
	}


	private function buildAnswer($state) {
		$answer=new stdClass();
		$answer->state=$state;
		return $answer;
	}


	private function reduceOrRemoveArticle($indexOfArticle) {
		if ($_SESSION["articles"][$indexOfArticle]->amount > 1) {
			$_SESSION["articles"][$indexOfArticle]->amount--;
		}
		else {
			unset($_SESSION["articles"][$indexOfArticle]);	
		}
	}	

	 function getIndexOfArticle($item) {
	 		foreach ($_SESSION["articles"] as $key => $value) {
	 			if($value->name == $item) {
	 				return $key;
	 			}
	 		}
	 }

	 function checkArticleInCart($item) {
		for ($x = 0; $x < count($_SESSION["articles"]); $x++) {
  			if ($_SESSION["articles"][$x]->name == $item) {
  				return true;
			}
		}
		return false;
	}

}
