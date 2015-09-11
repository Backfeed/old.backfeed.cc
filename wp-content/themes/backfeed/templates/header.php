<div id="main-header-container">
        <header id="main-header" role="banner">
                <a class="brand" href="<?= esc_url(home_url('/')); ?>">
                        <img src="/wp-content/themes/backfeed/assets/images/logo.png">
                </a>

                <?php if (has_nav_menu('primary_navigation')):
                        wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav nav-pills']);
                endif; ?>

            <div class="header-contact-methods">
                <div id="header-subscribe" class="morph-button morph-button-modal morph-button-modal-2 morph-button-fixed">
                    <button class="btn btn-primary morph-button-button" type="button">Subscribe</button>
                    <div class="morph-content"><div>
                        <div class="content-style-form content-style-form-1">
                            <span class="icon-close glyphicon glyphicon-remove"></span>
                            <?php mc4wp_form(71); ?>
                        </div>
                    </div></div>
                </div>

                <div class="social-icons">
                    <a class="social-icon" href="http://linkedin.com/company/backfeed" target="_blank"><i class="fa fa-linkedin"></i></a>
                    <a class="social-icon" href="http://twitter.com/backfeed_cc" target="_blank"><i class="fa fa-twitter"></i></a>
                    <div id="header-contact-us" href="#" class="social-icon morph-button morph-button-modal morph-button-modal-2 morph-button-fixed">
                        <i class="fa fa-envelope morph-button-button"></i>
                        <div class="morph-content"><div>
                            <div class="content-style-form content-style-form-1">
                                <span class="icon-close glyphicon glyphicon-remove"></span>
                                <?=do_shortcode('[contact-form-7 id="73" title="Contact Us Header"]')?>
                                <!--<form class="form subscribe-box form-inline">
                                    <h3>Contact Us</h3>
                                    <p>For when you have a project or an idea you want to share:</p>
                                    <label for="contact-name">Name</label>
                                    <input id="contact-name" class="form-control input-lg" type="text" placeholder="Type your name here">
                                    <label for="contact-email">Email</label>
                                    <input id="contact-email" class="form-control input-lg" type="email" placeholder="We will keep it safe, we promise!">
                                    <label for="contact-message">We're all ears!</label>
                                    <textarea id="contact-message" class="form-control input-lg" rows="3" placeholder="Type your message here"></textarea>
                                    <button type="submit" class="btn btn-primary btn-block btn-lg center-block">Send</button>
                                </form>-->
                            </div>
                        </div></div>
                    </div>
                </div>
            </div>

                <!--        <div id="collaborative-tagline-wrapper" class="row">-->
                <?php ////the_widget('Tagline_Widget'); ?>
                <!--        </div>-->
        </header>
</div>