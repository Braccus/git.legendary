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
    $this->layoutVars['title'] = 'Каталог';
    $this->templater->assign('welcome', 'Добро пожаловать на сайт Legendary Guitars!');
    $this->templater->assign('content', 'У нас Вы можете приобрести лучшие модели гитар ведущих мировых производителей, а так же любые аксессуары к ним по самым выгодным ценам.');
    $this->view = 'catalogue';
  }
}