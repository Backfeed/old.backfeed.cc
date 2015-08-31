<div id="main-header-container">
        <header id="main-header" role="banner">
                <a class="brand" href="<?= esc_url(home_url('/')); ?>">
                        <img src="/wp-content/themes/backfeed/assets/images/logo.png">
                </a>

                <?php if (has_nav_menu('primary_navigation')):
                        wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav nav-pills']);
                endif; ?>

                <div id="header-subscribe" class="morph-button morph-button-modal morph-button-modal-2 morph-button-fixed">
                    <button class="btn btn-primary" type="button">Subscribe</button>
                    <div class="morph-content"><div>
                        <div class="content-style-form content-style-form-1">
                            <span class="icon-close glyphicon glyphicon-remove"></span>
                            <?php mc4wp_form(71); ?>
                        </div>
                    </div></div>
                </div>

                <div class="social-icons">
                        <a href="http://linkedin.com/company/backfeed" target="_blank"><i class="fa fa-linkedin"></i></a>
                        <a href="http://twitter.com/backfeed_cc" target="_blank"><i class="fa fa-twitter"></i></a>
                        <a href="mailto:info@backfeed.cc"><i class="fa fa-envelope"></i></a>
                </div>

                <!--        <div id="collaborative-tagline-wrapper" class="row">-->
                <?php ////the_widget('Tagline_Widget'); ?>
                <!--        </div>-->
        </header>
</div>