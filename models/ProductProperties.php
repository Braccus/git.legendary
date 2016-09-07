<?php

/**
 * Class Product
 */
class ProductProperties extends Model
{
  /** @var array $data См. Model $data */
  protected $data = [];
  /** @var array $properties См. Model $properties */
  protected static $properties = ['abbr', 'title', 'overview', 'specs', 'detailed_specs'];

  public static function getProductProperties()
  {
    //Достаем данные из таблицы products
    $data = Db::getInstance()
      ->Select('SELECT ' . implode(',', self::$properties) . ' FROM products');
    // Формируем массив, который будет содержать объекты класса ProductProperties с данными внутри и возвращаем этот массив.
    $return = [];
    foreach ($data as $index => $item) {
      $entry = new ProductProperties();
      $entry->data = $item;
      $return[] = $entry;
    }
    return $return;

  }

  /**
   * Геттер abbr.
   * @return string
   */
  public function getProductAbbr()
  {
    return $this->data['abbr'];
  }

  /**
   * Геттер title.
   * @return string
   */
  public function getProductTitle()
  {
    return $this->data['title'];
  }

  /**
   * Геттер overview.
   * @return string
   */
  public function getProductOverview()
  {
    return $this->data['overview'];
  }

  /**
   * Геттер specs.
   * @return string
   */
  public function getProductSpecs()
  {
    return $this->data['specs'];
  }

  /**
   * Геттер detailed_specs.
   * @return string
   */
  public function getProductDetailSpecs()
  {
    return $this->data['detailed_specs'];
  }
}
