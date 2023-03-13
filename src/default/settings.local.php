<?php

/**
 * Enable local development services.
 */

$settings['hash_salt'] = 'jd0JVP_Sbh5edEUlVP7cho0oR8EBP5f5wYhWx4_DY9qJcUDSQ8V5-87iA0NCDICjSnNp4wxZYQ';

$databases['default']['default'] = array (
  'database' => 'drupal10',
  'username' => 'drupal10',
  'password' => 'drupal10',
  'prefix' => '',
  'host' => 'database',
  'port' => '',
  'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql',
  'driver' => 'mysql',
);

$settings['config_sync_directory'] = '../config/sync';
$settings['site_studio_sync'] = '../config/sync/cohesion';
$settings['dx8_editable_api_url'] = TRUE;
$config['cohesion.settings']['api_url'] = "https://api.cohesiondx.com";
$config['cohesion.settings']['api_key'] = "key-cohesion-baseline";
$config['cohesion.settings']['organization_key'] = "test-cohesion-baseline";

error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);
