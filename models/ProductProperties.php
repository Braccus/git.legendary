<?php

/**
 * Class Product
 */
class ProductProperties extends Model
{
  /** @var array $data См. Model $data */
  protected $data = [];
  /** @var array $properties См. Model $properties */
  protected static $properties = ['id', 'abbr', 'title', 'overview', 'specs', 'detailed_specs'];

  public static function getProductProperties($id)
  {
    //Достаем данные из таблицы products
    $data = Db::getInstance()
      ->Select('SELECT ' . implode(',', self::$properties) . ' FROM products WHERE id=:id', [
        'id' => $id
      ]);

    // Если данных нет отправляем false.
    if (!isset($data[0])) {
      return false;
    }

    // Если данные есть, создаем объект класса ProductProperties, кладем данные в массив $this->data и возвращаем объект.
    $productSpecs = new ProductProperties();
    $productSpecs->data = $data[0];
    return $productSpecs;
  }

  /**
   * Геттер id.
   * @return string
   */
  public function getProductId()
  {
    return $this->data['id'];
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
