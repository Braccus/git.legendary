<?php

/**
 * Class Account
 */
class Account extends Model
{
  /** @var array $data См. Model $data */
  protected $data = [];
  /** @var array $properties См. Model $properties */
  protected static $properties = ['page', 'page_alias'];

  public static function getAccountPages()
  {
    //Достаем данные из таблицы acc_pages
    $data = Db::getInstance()
      ->Select('SELECT ' . implode(',', self::$properties) . ' FROM acc_pages');

    // Формируем массив, который будет содержать объекты класса Account с данными внутри и возвращаем этот массив.
    $return = [];
    foreach ($data as $index => $item) {
      $entry = new Account();
      $entry->data = $item;
      $return[] = $entry;
    }
    return $return;
  }

  /**
   * Геттер page.
   * @return string
   */
  public function getAccPage()
  {
    return $this->data['page'];
  }

  /**
   * Геттер pageAlias.
   * @return string
   */
  public function getAccPageAlias()
  {
    return $this->data['page_alias'];
  }
}

