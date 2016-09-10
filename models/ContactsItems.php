<?php

/**
 * Class ContactsItems
 */
class ContactsItems extends Model
{
  /** @var array $data См. Model $data */
  protected $data = [];
  /** @var array $properties См. Model $properties */
  protected static $properties = ['phone', 'address', 'map'];

  public static function getContactsItems()
  {
    //Достаем данные из таблицы contacts
    $data = Db::getInstance()
      ->Select('SELECT ' . implode(',', self::$properties) . ' FROM contacts');

    // Формируем массив, который будет содержать объекты класса ContactsItems с данными внутри и возвращаем этот массив.
    $contacts = new ContactsItems();
    $contacts->data = $data[0];
    return $contacts;
  }

  /**
   * Геттер phone.
   * @return string
   */
  public function getPhone()
  {
    return $this->data['phone'];
  }

  /**
   * Геттер address.
   * @return string
   */
  public function getAddress()
  {
    return $this->data['address'];
  }

  /**
   * Геттер map.
   * @return string
   */
  public function getMap()
  {
    return $this->data['map'];
  }
}

