<?php 

class GetProductByArticleId {

	public function buildQuery($articleId) {
		return "SELECT p.name AS productName FROM products p WHERE p.id = $articleId";
	}
}
