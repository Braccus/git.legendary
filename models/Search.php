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

  public static function verifyTitle($title)
  {
    //Достаем данные из таблицы products
    $data = Db::getInstance()
      ->Select('SELECT ' . implode(',', self::$properties) . ' FROM products');

    // Если данных нет выводим ошибку.
    if (!isset($data[0])) {
      echo 'Ошибка 404';
      exit(404);
    }

    // Если данные есть, создаем объект класса ProductProperties, кладем данные в массив $this->data и возвращаем объект.
    $productSpecs = new ProductProperties();
    $productSpecs->data = $data[0];
    return $productSpecs;
  }
}