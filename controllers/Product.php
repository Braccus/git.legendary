<?php

/**
 * Class Products
 */
class Product extends Controller
{
  /** @var array $allowedActions См. определение массива в базовом, Controller классе. */
  protected $allowedActions = ['index'];

  /**
   * Экшен отображения страницы выбранного продукта.
   */
  protected function actionIndex()
  {
    $id = $_GET['id'];
    $product = ProductProperties::getProductProperties($id);
    $this->templater->assign('product', $product);
    $this->layoutVars['title'] = $product->getProductTitle();
    $this->view = 'product';
  }
}
