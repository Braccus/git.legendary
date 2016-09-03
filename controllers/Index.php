<?php

/**
 * Class Index
 */
class Index extends Controller
{
  /** @var array $allowedActions См. определение массива в базовом, Controller классе. */
  protected $allowedActions = ['index'];

  /**
   * Просто пример страницы по умолчанию доступной как главная, то есть http://site/
   */
  protected function actionIndex()
  {
    /*echo 'Hello, i\'m index page!';*/

  }
}