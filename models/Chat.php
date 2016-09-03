<?php

/**
 * Class Chat
 */
class Chat extends Model
{
  /** @var array $data См. Model $data */
  protected $data = [];
  /** @var array $properties См. Model $properties */
  protected static $properties = ['id', 'user_id', 'message', 'created_at'];

  /**
   * Метод возвращает экземпляр модели Chat по ее id.
   * Может вернуть false, если данные с таким id отсутствуют в БД.
   * @param $id
   * @return Chat|bool
   */
  public static function findOne($id)
  {
    // Достаем данные таблицы chat из БД.
    $data = Db::getInstance()
      ->Select('SELECT ' . implode(',', self::$properties) . ' FROM chat WHERE id=:id', [
        'id' => $id
      ]);

    // Если данных нет отправляем false.
    if (!isset($data[0])) {
      return false;
    }

    // Если данные есть, создаем объект класса Chat, кладем данные в массив $this->data и возвращаем объект.
    $entry = new Chat();
    $entry->data = $data[0];
    return $entry;
  }

  /**
   * Метод возвращает все объекты модели Chat в массиве.
   * @param string $sort Метод сортировки при выборке из БД.
   * @return Chat[]
   */
  public static function findAll($sort = 'DESC')
  {
    // Определяем метод.
    $order = $sort === 'DESC' ? 'DESC' : 'ASC';
    // Достаем данные из таблицы chat.
    $data = Db::getInstance()
      ->Select('SELECT ' . implode(',', self::$properties) . ' FROM chat ORDER BY created_at ' . $order);
    // Формируем массив, который будет содержать объекты класса Chat с данными внутри и возвращаем этот массив.
    $return = [];
    foreach ($data as $index => $item) {
      $entry = new Chat();
      $entry->data = $item;
      $return[] = $entry;
    }
    return $return;
  }

  /**
   * Метод возвращаем все объекты модели Chat в массиве вместе с объектами User, которые отправили это сообщение.
   * @param string $sort
   * @return Chat[]
   */
  public static function findAllWithUsers($sort = 'DESC')
  {
    // Получаем все объекты Chat по методу findAll.
    $messages = self::findAll($sort);
    // Формируем массив id пользователей, которые оставляли сообщения.
    $userIds = [];
    foreach ($messages as $message) {
      if (in_array($message->getUserId(), $userIds)) {
        continue;
      }
      $userIds[] = $message->getUserId();
    }

    // Вызываем функцию, которая вернет массив пользователей по массиву id пользователей.
    $users = User::findByIds($userIds);
    // Перебираем каждое сообщение.
    foreach ($messages as $message) {
      // Перебираем каждого пользователя для каждого сообщения.
      foreach ($users as $user) {
        // Если нашли пользователя, который отправлял сообщение, записываем его в данные сообщения.
        if ($message->getUserId() == $user->getId()) {
          $message->setUser($user);
          break;
        }
      }
    }
    // Возвращаем массив с сообщениями и пользователями оставившими эти сообщения.
    return $messages;
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
   * Геттер user id.
   * @return integer
   */
  public function getUserId()
  {
    return $this->data['user_id'];
  }

  /**
   * Геттер message.
   * @return string
   */
  public function getMessage()
  {
    return $this->data['message'];
  }

  /**
   * Геттер created at.
   * @return string
   */
  public function getCreatedAt()
  {
    return $this->data['created_at'];
  }

  /**
   * Геттер модели User.
   * @return User
   */
  public function getUser()
  {
    return $this->data['user'];
  }

  /**
   * Сеттер модели User.
   * @param User $value
   */
  public function setUser($value)
  {
    $this->data['user'] = $value;
  }
}
