<?php

/**
 * Class Products
 */
class Product extends Controller
{
  /** @var array $allowedActions См. определение массива в базовом, Controller классе. */
  protected $allowedActions = ['index'];

  /**
   * Просто пример страницы по умолчанию доступной как главная, то есть http://site/
   */
  protected function actionIndex()
  {
    $product = ProductProperties::getProductProperties();
    $this->templater->assign('product', $product);
    $this->layoutVars['title'] = $product['title'];
    $this->view = 'product';
  }
}
