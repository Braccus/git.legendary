<?php

/**
 * Class Error404
 */
class Error404 extends Controller
{
  /** @var array $allowedActions См. определение массива в базовом, Controller классе. */
  protected $allowedActions = ['index'];

  /**
   * Экшен отображения страницы 404.
   */
  protected function actionIndex()
  {
    $this->layoutVars['title'] = 'You\'ve ripped a hole in the fabric of the Internet. Love, Admin.';
    $this->view = '404';
  }
}
