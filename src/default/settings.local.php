<?php

/**
 * Enable local development services.
 */
$settings['container_yamls'][] = DRUPAL_ROOT . '/sites/development.services.yml';

$settings['hash_salt'] = 'jd0JVP_Sbh5edEUlVP7cho0oR8EBP5f5wYhWx4_DY9qJcUDSQ8V5-87iA0NCDICjSnNp4wxZYQ';

$databases['default']['default'] = array (
  'database' => 'drupal9',
  'username' => 'drupal9',
  'password' => 'drupal9',
  'prefix' => '',
  'host' => 'database',
  'port' => '',
  'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql',
  'driver' => 'mysql',
);

$settings['config_sync_directory'] = '../config/sync';
$settings['site_studio_sync'] = '../config/sync/cohesion';
$settings['dx8_editable_api_url'] = TRUE;
$config['cohesion.settings']['stylesheet_json_storage_keyvalue'] = TRUE;
//$config['cohesion.settings']['api_url'] = "http://dx8-gateway:3000";
//$config['cohesion.settings']['api_url'] = "https://eu-development-api.sitestudio.acquia.com";
$config['cohesion.settings']['api_url'] = "https://api.cohesiondx.com";
$config['cohesion.settings']['api_key'] = "key-cohesion-baseline";
$config['cohesion.settings']['organization_key'] = "test-cohesion-baseline";

//$settings['config_exclude_modules'] = [
//  'devel',
//  'cohesion_devel',
//  'stage_file_proxy',
//  'cohesion',
//  'cohesion_base_styles',
//  'cohesion_breakpoint_indicator',
//  'cohesion_custom_styles',
//  'cohesion_elements',
//  'cohesion_style_helpers',
//  'cohesion_sync',
//  'cohesion_templates',
//  'cohesion_website_settings',
//  'sitestudio_page_builder',
//];

// Stage file proxy config
//$config['stage_file_proxy.settings']['origin'] = "http://inspacedev.dev-sitestudiodx.acsitefactory.com";
//$config['stage_file_proxy.settings']['verify'] = FALSE;
//$config['stage_file_proxy.settings']['excluded_extensions'] = "css,js,ttf,woff";

error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);
