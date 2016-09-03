<?php

/**
 * Class User
 */
class User extends Model
{
  /** @var array $data См. Model $data */
  protected $data = [];
  /** @var array $properties См. Model $properties */
  protected static $properties = ['id', 'name', 'email', 'password'];

  /**
   * Метод возвращает экземпляр модели User по ее id.
   * Может вернуть false, если данные с таким id отсутствуют в БД.
   * @param $id
   * @return User|bool
   */
  public static function findOne($id)
  {
    // Достаем данные таблицы chat из БД.
    $data = Db::getInstance()
      ->Select('SELECT ' . implode(',', self::$properties) . ' FROM users WHERE id=:id', [
        'id' => $id
      ]);

    // Если данных нет отправляем false.
    if (!isset($data[0])) {
      return false;
    }

    // Если данные есть, создаем объект класса User, кладем данные в массив $this->data и возвращаем объект.
    $user = new User();
    $user->data = $data[0];
    return $user;
  }

  /**
   * Метод возвращает массив объектов User по переданным id.
   * @param array $ids
   * @return User[]
   */
  public static function findByIds(array $ids)
  {
    // Пробегаемся по всему массиву переданных id и приводим их к int чтобы избежать sql инъекции.
    foreach ($ids as &$id) {
      $id = (int)$id;
    }

    // Достаем данные
    $data = Db::getInstance()
      ->Select('SELECT ' . implode(',', self::$properties) . ' FROM users WHERE id IN (' . implode(', ', $ids) . ')');

    // Формируем массив, который будет содержать объекты класса User с данными внутри и возвращаем этот массив.
    $return = [];
    foreach ($data as $index => $item) {
      $entry = new User();
      $entry->data = $item;
      $return[] = $entry;
    }
    return $return;
  }

  /**
   * Геттер id.
   * @return integer
   */
  public function getId()
  {
    return $this->data['id'];
  }

  /**
   * Геттер name
   * @return string
   */
  public function getName()
  {
    return $this->data['name'];
  }

  /**
   * Геттер email.
   * @return string
   */
  public function getEmail()
  {
    return $this->data['username'];
  }
}