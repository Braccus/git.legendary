<?php

/**
 * Class Catalogue
 */
class Catalogue extends Controller
{
  /** @var array $allowedActions См. определение массива в базовом, Controller классе. */
  protected $allowedActions = ['index'];

  /**
   * Экшен отображения страницы каталога.
   */
  protected function actionIndex()
  {
    $products = CatalogueItems::getCatalogueItems();
    $this->templater->assign('products', $products);
    $this->layoutVars['title'] = 'Каталог';
    $this->view = 'catalogue';
  }
}