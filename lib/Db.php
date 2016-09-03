<?php

/**
 * Class Db класс для работы с базой данных
 */
class Db
{
  /** @var Db|null объект данного класса */
  private static $_instance = null;

  /** @var resource ресурс для работы с бд */
  private $db;

  /**
   * @return Db|null Получаем объект для работы с БД
   */
  public static function getInstance()
  {
    if (self::$_instance == null) {
      self::$_instance = new Db();
    }
    return self::$_instance;
  }

  /** Запрещаем копировать объект */
  private function __construct() {}
  /** Запрещаем клонировать объект */
  private function __clone() {}

  /**
   * Метод выполняет соединение с базой данных и сохраняет ресурс соединения в свойстве $this->db
   * @param string $user имя пользователя бд
   * @param string $password пароль к бд
   * @param string $base имя базы данных
   * @param string $host адрес хоста к которому будем соединяться
   * @param int $port порт соединения
   * @return void
   */
  public function Connect($user, $password, $base, $host = 'localhost', $port = 3306)
  {
    // Формируем строку соединения с сервером
    $connectString = 'mysql:host=' . $host . ';port= ' . $port . ';dbname=' . $base . ';charset=UTF8;';
    $this->db = new PDO($connectString, $user, $password,
      [
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC, // возвращать ассоциативные массивы
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION // возвращать Exception в случае ошибки
      ]
    );
  }

  /**
   * Метод выполняет не select запрос
   * @param string $query строка запроса
   * @param array $params массив с парами псевдопеременная => значение
   * @return bool true в случае успешного выполнения, иначе false
   * @link http://php.net/manual/ru/pdo.prepare.php метод prepare()
   * @link http://php.net/manual/ru/pdostatement.execute.php метод execute()
   */
  public function Query($query, $params = array())
  {
    $res = $this->db->prepare($query);
    $res->execute($params);
    return $res;
  }

  /**
   * Метод получает данные из БД
   * @param string $query строка запроса
   * @param array $params массив с парами псевдопеременная => значение
   * @return array возвращает массив, содержащий все строки результирующего набора
   * @throws Exception
   * @link http://php.net/manual/ru/pdostatement.fetchall.php метод fetchAll()
   */
  public function Select($query, $params = array())
  {
    $result = $this->Query($query, $params);
    if ($result) {
      return $result->fetchAll();
    }
    throw new Exception('Не удалось выполнить запрос', 400);
  }
}