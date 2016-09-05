<?php

/**
 * Class Controller
 */
abstract class Controller
{
  /** @var array $allowedActions Массив содержит доступные экшены для контроллера. */
  protected $allowedActions = [];
  /** @var Smarty $templater Экземпляр класса темплейтера для view. */
  protected $templater;
  /** @var string $view Строка, в которой указывается view, которую необходимо отобразить. */
  protected $view;
  /** @var array $layoutVars Ассоциативный массив, ключи которого будут заменены в лейауте на значения. */
  protected $layoutVars = [];
  /** @var string $layout Строка, в которой указывается какой лейаут следует использовать. */
  protected $layout = 'layout';

  /**
   * Controller constructor.
   */
  public function __construct()
  {
    $this->templater = new Smarty();
  }

  /**
   * Метод выводит пользователю layout и view, если view была указана.
   */
  public final function output()
  {
    // Создаем отдельный темплейтер для лейаута.
    $layoutTemplater = new Smarty();
    // Если была установлена вью, то рендерим ее и сохраняем в массив с ключами content, menu и account для того,
    // чтобы эта вью заполнила нужные места в лейауте.
    $this->layoutVars['content'] = $this->view
      ? $this->templater->fetch(Core::getInstance()->CONFIG['path']['templates'] . '/' . $this->view . '.html')
      : '';
    $this->layoutVars['menu'] = $this->templater->fetch(Core::getInstance()->CONFIG['path']['templates'] . '/' . 'menu.html');
    $this->layoutVars['account'] = $this->templater->fetch(Core::getInstance()->CONFIG['path']['templates'] . '/' . 'account.html');
    // Присваиваем ключи и значения, которые надо будет поменять в лейауте.
    $layoutTemplater->assign($this->layoutVars);
    // Выводим лейаут с вью пользователю.
    $layoutTemplater->display(Core::getInstance()->CONFIG['path']['templates'] . '/' . $this->layout . '.html');
  }

  /**
   * Метод проверяет доступен ли такой action в контроллере.
   * @param $method
   * @return bool
   */
  protected function isAllowedAction($method)
  {
    return in_array($method, $this->allowedActions);
  }

  /**
   * Метод вызывает экшен в контроллере, а так же события до экшена (beforeAction) и после (afterAction).
   * @param $method
   * @return bool
   */
  public function callAction($method)
  {
    $this->beforeAction();
    if ($this->isAllowedAction($method)) {
      $methodName = 'action' . ucfirst($method);
      $this->$methodName();
    }
    $this->afterAction();
    return false;
  }

  /**
   * Метод выполняется до выполнения экшена, его можно переопределить,
   * если необходима какая-то логика до выполнения экшена контроллера.
   */
  public function beforeAction() {}

  /**
   * Метод выполняется после выполнения экшена, его можно переопределить,
   * если необходима какая-то логика после выполнения экшена контроллера.
   */
  public function afterAction() {}
}