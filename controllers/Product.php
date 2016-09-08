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
    $id = (int)$_GET['id'];
    if (!$id){
      echo 'Ошибка 404';
      exit(404);
    };
    $product = ProductProperties::getProductProperties($id);
    $this->templater->assign('product', $product);
    $this->layoutVars['title'] = $product->getProductTitle();
    $this->view = 'product';
  }
}
