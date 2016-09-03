<?php

/** @var array $config Конфиг приложения. */
$config = [
  'db' => [
    'host' => 'localhost',
    'port' => '3306',
    'user' => 'root',
    'pass' => '',
    'base' => 'geekbrains'
  ],
  'path' => [
    'root' => __DIR__,
    'controllers' => __DIR__ . '/controllers',
    'templates' => __DIR__ . '/templates',
    'www' => __DIR__ . '/www'
  ]
];

/**
 * Функция-автолоадер для автоматического подключения классов.
 * @param $class
 * @return bool
 */
function autoloader($class) {
  $folders = [
    'controllers',
    'controllers/common',
    'models',
    'models/common',
    'lib/smarty',
    'lib/'
  ];

  foreach ($folders as $folder) {
    $file = __DIR__ . '/' . $folder . '/' . $class . '.php';
    if (is_file($file)) {
      require_once $file;
      return true;
    }
  }
  return false;
}

// Инициализируем автозагрузчик классов.
spl_autoload_register('autoloader');
// Инициализируем ядро нашего фреймворка.
Core::getInstance()->init($config);
// Запускаем функцию для рендера необходимой страницы.
Core::getInstance()->loadPage();