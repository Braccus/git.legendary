<?php

/**
 * Class CatalogueItems
 */
class CatalogueItems extends Model
{
  /** @var array $data См. Model $data */
  protected $data = [];
  /** @var array $properties См. Model $properties */
  protected static $properties = ['abbr', 'title'];

  public static function getCatalogueItems()
  {
    //Достаем данные из таблицы products
    $data = Db::getInstance()
      ->Select('SELECT ' . implode(',', self::$properties) . ' FROM products');
    // Формируем массив, который будет содержать объекты класса CatalogueItems с данными внутри и возвращаем этот массив.
    $return = [];
    foreach ($data as $index => $item) {
      $entry = new CatalogueItems();
      $entry->data = $item;
      $return[] = $entry;
    }
    return $return;

  }

  /**
   * Геттер page.
   * @return string
   */
  public function getItemAbbr()
  {
    return $this->data['abbr'];
  }

  /**
   * Геттер pageAlias.
   * @return string
   */
  public function getItemTitle()
  {
    return $this->data['title'];
  }
}

