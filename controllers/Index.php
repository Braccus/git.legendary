<?php

/**
 * Class Index
 */
class Index extends Controller
{
  /** @var array $allowedActions См. определение массива в базовом, Controller классе. */
  protected $allowedActions = ['index', 'menu'];

  /**
   * Просто пример страницы по умолчанию доступной как главная, то есть http://site/
   */
  protected function actionIndex()
  {
    /*$menu_pages = Menu::getMenuPages();
    $this->templater->assign('menu_pages', $menu_pages);*/
    /*$this->templater->assign('menu_pages', array(
      array('page'=>'index', 'page_alias'=>'Главная'),
      array('page'=>'catalogue', 'page_alias'=>'Каталог'),
      array('page'=>'contacts', 'page_alias'=>'Контакты')
    ));*/
    $this->layoutVars['title'] = 'Главная';
    $this->templater->assign('welcome', 'Добро пожаловать на сайт Legendary Guitars!');
    $this->templater->assign('content','У нас Вы можете приобрести лучшие модели гитар ведущих мировых производителей, а так же любые аксессуары к ним по самым выгодным ценам.');
    $this->view = 'index';
  }

  protected function actionMenu()
  {
    $menu_pages = Menu::getMenuPages();
    $this->templater->assign('menu_pages', $menu_pages);
    $this->view = 'menu';
  }
}