<div id="main-header-container">
    <header id="main-header" role="banner">
        <a class="brand" href="<?= esc_url(home_url('/')); ?>">
            <img src="/wp-content/themes/backfeed/assets/images/logo.png">
        </a>

        <?php if (has_nav_menu('primary_navigation')):
            wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav nav-pills']);
        endif; ?>

        <div class="header-contact-methods">
            <div id="header-subscribe">
                <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#header-subscribe-modal">Subscribe</button>

                <div class="modal fade" id="header-subscribe-modal" tabindex="-1" role="dialog">
                    <div class="modal-dialog modal-sm" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">Subscribe</h4>
                            </div>
                            <div class="modal-body content-style-form">
                                <?php mc4wp_form(71); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="social-icons">
                <a class="social-icon" href="http://linkedin.com/company/backfeed" target="_blank"><i class="fa fa-linkedin"></i></a>
                <a class="social-icon" href="http://twitter.com/backfeed_cc" target="_blank"><i class="fa fa-twitter"></i></a>
                <a class="social-icon" href="http://github.com/backfeed" target="_blank"><i class="fa fa-github"></i></a>

                <div id="header-contact-us">
                    <i class="fa fa-envelope morph-button-button social-icon" data-toggle="modal" data-target="#header-contact-modal"></i>

                    <div class="modal fade" id="header-contact-modal" tabindex="-1" role="dialog">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title">Contact Us</h4>
                                </div>
                                <div class="modal-body content-style-form">
                                    <?=do_shortcode('[contact-form-7 id="73" title="Contact Us Header"]')?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</div>
