<?php

namespace Roots\Sage\Utils;

/**
 * Tell WordPress to use searchform.php from the templates/ directory
 */
function get_search_form() {
  $form = '';
  locate_template('/templates/searchform.php', true, false);
  return $form;
}
add_filter('get_search_form', __NAMESPACE__ . '\\get_search_form');

function get_current_page_url() {
  global $wp;
  return add_query_arg( $_SERVER['QUERY_STRING'], '', home_url( $wp->request ) );
}