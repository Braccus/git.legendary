<?php

/**
* Class Form
*/
class Form extends Controller
{
  /** @var array $allowedActions См. определение массива в базовом, Controller классе. */
  protected $allowedActions = ['get'];

  /**
   * Экшен обработки посковой формы.
   */
  protected function actionGet()
  {
    $query = $_GET;
    $result = Search::verifySearchQuery($query);
    return $result;
  }
}
