<?php

/**
 * Class Contacts
 */
class Contacts extends Controller
{
  /** @var array $allowedActions См. определение массива в базовом, Controller классе. */
  protected $allowedActions = ['index'];

  /**
   * Экшен отображения страницы контактов.
   */
  protected function actionIndex()
  {
    $contacts = ContactsItems::getContactsItems();
    $this->templater->assign('contacts', $contacts);
    $this->layoutVars['title'] = 'Контакты';
    $this->view = 'contacts';
  }
}