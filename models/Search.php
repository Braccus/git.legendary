<?php

/**
 * Class Search
 */
class Search extends Model
{
  /** @var array $data См. Model $data */
  protected $data = [];
  /** @var array $properties См. Model $properties */
  protected static $properties = ['title'];

  public static function verifySearchQuery($query)
  {
    //Достаем данные из таблицы products
    $data = Db::getInstance()
      ->Select('SELECT ' . implode(',', self::$properties) . ' FROM products WHERE title LIKE ":%query%"', [
        'query' => $query
      ]);

    // Если данных нет выводим ошибку.
    if (!isset($data[0]) || !$data) {
      return false;
    }

    return true;
  }
}