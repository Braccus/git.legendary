<?php
abstract class Model
{
  /** @var array $data Ассоциативный массив в котором будет храниться информация модели. */
  protected $data = [];
  /** @var array $properties Массив с полями модели в базе данных. */
  protected static $properties = [];
}