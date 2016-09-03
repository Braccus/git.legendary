<?php

/**
 * Class Guestbook
 */
class Guestbook extends Controller
{
  /** @var array $allowedActions См. определение массива в базовом, Controller классе. */
  protected $allowedActions = ['index', 'post'];

  /**
   * Экшен отображения всех сообщений пользователей в гостевой книге.
   * Данный экшен будет доступен по ссылкам:
   *  http://site/?page=guestbook&action=index
   *  http://site/?page=guestbook
   * Последняя ссылка доступна только из-за того, что action index берется по умолчанию.
   */
  protected function actionIndex()
  {
    $entries = Chat::findAllWithUsers();
    $this->templater->assign('entries', $entries);
    $this->layoutVars['title'] = 'Гостевая книга';
    $this->view = 'guestbook';
  }

  /**
   * Другой экшен, например для обработки формы нового сообщения пользователя.
   */
  protected function actionPost()
  {

  }
}