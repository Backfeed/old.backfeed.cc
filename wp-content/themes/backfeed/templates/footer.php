<div class="hr"></div>
<footer>
  <div class="container">
    <?php //dynamic_sidebar('sidebar-footer'); ?>
    <p class="copyright-notice text-muted col-sm-4">&copy; 2015 Backfeed. All rights reserved</p>
    <?php if (has_nav_menu('primary_navigation')):
      wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav col-sm-6 col-xs-12']);
    endif; ?>
    <div class="social-icons col-sm-2 text-center">
      <a href="http://linkedin.com/company/backfeed" target="_blank"><i class="fa fa-linkedin"></i></a>
      <a href="http://twitter.com/backfeed_cc" target="_blank"><i class="fa fa-twitter"></i></a>
    </div>
  </div>
</footer>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-65234444-1', 'auto');
  ga('require', 'displayfeatures');
  ga('require', 'linkid', 'linkid.js');
  ga('send', 'pageview');
</script>