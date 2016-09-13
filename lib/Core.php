<?php

/**
 * Class Core Ядро нашего самописного фреймворка.
 */
class Core
{
  /** @var Core $instance В данной переменной будет храниться объект ядра */
  private static $instance = null;

  /** @var array $REQUEST Параметры запроса. */
  public $REQUEST;
  /** @var array $FILES Переданные файлы. */
  public $FILES;
  /** @var array $COOKIE Переданные куки. */
  public $COOKIE;
  /** @var array $CONFIG Загруженный конфиг сайта. */
  public $CONFIG;

  /** Запрещаем создавать объект извне. */
  private function __construct() {}
  /** Запрещаем клонировать объект. */
  private function __clone() {}

  /**
   * Метод паттерна singleton, который возвращает экземпляр объекта класса Core,
   * при повторном обращении вернется тот же самый объект.
   * @return Core
   */
  public static function getInstance()
  {
    if (self::$instance == null) {
      self::$instance = new Core();
    }
    return self::$instance;
  }

  /**
   * @param array $config Конфиг приложения.
   */
  public function init(array $config)
  {
    $this->REQUEST = $_REQUEST;
    $this->FILES = $_FILES;
    $this->COOKIE = $_COOKIE;
    $this->CONFIG = $config;
    Db::getInstance()->Connect(
        $config['db']['user'],
        $config['db']['pass'],
        $config['db']['base'],
        $config['db']['host'],
        $config['db']['port']
      );
  }

  /**
   * Функция необходима для определения контроллера, экшена и его запуска.
   */
  public function loadPage()
  {
    // Получаем имя контроллера.
    $controllerName = isset($this->REQUEST['page']) ? ucfirst($this->REQUEST['page']) : 'Index';
    // Получаем путь до контроллера.
    $controllerFile = $this->CONFIG['path']['controllers'] . '/' . $controllerName . '.php';
    // Если не существует такого контроллера, тогда выводим ошибку.
    if (!is_file($controllerFile)) {
      /*echo 'Ошибка 404';
      exit(404);*/
      $this->REQUEST['page'] = 'Error404';
    }

    /** @var Controller $controller Создаем объект контроллера. */
    $controller = new $controllerName();
    // Определяем название экшена.
    $action = isset($this->REQUEST['action']) ? $this->REQUEST['action'] : 'index';
    // Вызываем экшен.
    $controller->callAction($action);
    // Выводим на экран лейаут с контентом.
    $controller->output();
  }
}
