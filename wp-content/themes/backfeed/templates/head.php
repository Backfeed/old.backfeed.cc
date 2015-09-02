<?php

use Roots\Sage\Utils;
use Roots\Sage\Titles;

?>

<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta property="og:title" content="<?=wp_title()?>" />
  <meta property="og:type" content="website" />
  <meta property="og:url" content="<?=Utils\get_current_page_url()?>" />
  <meta property="og:image" content="<?=site_url()?>/wp-content/themes/backfeed/assets/images/open-graph-image.png" />
  <?php wp_head(); ?>
</head>
