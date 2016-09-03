<?php

/**
 * Class Menu
 */
class Menu extends Model
{
  /** @var array $data См. Model $data */
  protected $data = [];
  /** @var array $properties См. Model $properties */
  protected static $properties = ['page', 'page_alias'];

  public static function getMenuPages()
  {
    //Достаем данные из таблицы menu_pages
    $data = Db::getInstance()
      ->Select('SELECT ' . implode(',', self::$properties) . ' FROM menu_pages');
    // Формируем массив, который будет содержать объекты класса Menu с данными внутри и возвращаем этот массив.
    $return = [];
    foreach ($data as $index => $item) {
      $entry = new Menu();
      $entry->data = $item;
      $return[] = $entry;
    }
    return $return;

  }

}
