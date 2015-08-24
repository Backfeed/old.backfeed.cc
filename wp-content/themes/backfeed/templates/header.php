<header id="top-header">

  <form class="subscribe-box form-inline">
    <div class="form-group">
      <p class="form-control-static">Sign up to get the latest on Backfeed and the new developments in the blockchain space:</p>
    </div>
    <div class="form-group">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="enter your email" />
      <span class="input-group-btn">
        <button class="btn btn-primary" type="button">Subscribe</button>
      </span>
      </div><!-- /input-group -->
    </div>
  </form>

  <div class="social-icons">
    <span class="social-icons-label">Contact Us:</span>
    <a href="http://linkedin.com/company/backfeed" target="_blank"><i class="fa fa-linkedin"></i></a>
    <a href="http://twitter.com/backfeed_cc" target="_blank"><i class="fa fa-twitter"></i></a>
    <a href="mailto:info@backfeed.cc"><i class="fa fa-envelope"></i></a>
  </div>

</header>

<header id="main-header" role="banner">
  <div class="container">

    <div id="top-logo-menu" class="row">

      <a class="brand" href="<?= esc_url(home_url('/')); ?>">
        <img src="/wp-content/themes/backfeed/assets/images/logo.png">
      </a>

      <nav role="navigation">
        <?php if (has_nav_menu('primary_navigation')):
          wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav nav-pills']);
        endif; ?>
      </nav>

    </div>

    <div id="collaborative-tagline-wrapper" class="row">
      <?php //the_widget('Tagline_Widget'); ?>
    </div>

  </div>
</header>