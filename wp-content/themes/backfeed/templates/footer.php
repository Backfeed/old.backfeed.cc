<div class="hr"></div>
<footer>
  <div class="container">
    <?php //dynamic_sidebar('sidebar-footer'); ?>
    <p class="copyright-notice text-muted col-sm-4">&copy; 2015 Backfeed. All rights reserved</p>
    <?php if (has_nav_menu('primary_navigation')):
      wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav col-sm-6 col-xs-12']);
    endif; ?>
    <div class="social-icons col-sm-2 col-xs-12 text-center">
      <a href="http://linkedin.com/company/backfeed" target="_blank"><i class="fa fa-linkedin"></i></a>
      <a href="http://twitter.com/backfeed_cc" target="_blank"><i class="fa fa-twitter"></i></a>
      <a href="http://github.com/backfeed" target="_blank"><i class="fa fa-github"></i></a>
    </div>
  </div>
</footer>

