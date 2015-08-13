<div class="col-xs-12">

    <section id="about" class="row with-illustration">
        <div class="illustration">
            <img class="img-responsive center-block" src="/wp-content/themes/backfeed/assets/images/compass.png" alt="Compass">
        </div>
        <div class="text">
            <h2>About Backfeed</h2>
            <p class="lead">Backfeed make large-scale collaboration possible. Based on blockchain technology, our protocols enable people to create and maintain decentralized collaboration (DCs) in an organic and distributed manner, independent of any central governance structure.</p>
            <p>Backfeed develops infrastructure and tools that build on the emerging blockchain ecosystem. Providing resilient technology and innovative economic models to promote viable and sustainable scale-free organizations through equitable distribution of co-created value. Our generic API can be easily integrated with any application or online tool.</p>
            <p>As an analogy, if the blockchain can be regarded as the TCP/IP (communication layer of the internet), Backfeed is building a canonical protocol and platform (akin to the HTTP protocol and the web browser) to enable blockchain-based decentralized collaboration, as easily as one would deploy a website today. Think of Backfeed as the WordPress for decentralized applications and the GitHub for decentralized organisations.</p>
        </div>
    </section>

    <aside class="tagline">Backfeed, helping the transition into more agile and decentralized organisations
        <img class="connector hidden-xs hidden-sm" id="connector-a" src="/wp-content/themes/backfeed/assets/images/connector-a.png" />
    </aside>

    <section id="vision" class="row with-illustration">
        <div class="illustration">
            <img class="img-responsive center-block" src="/wp-content/themes/backfeed/assets/images/woman_with_idea.png" alt="Woman with Idea">
        </div>
        <div class="text">
            <h2>Our Vision</h2>
            <p>Imagine Facebook owned by its users. Imagine people lending or borrowing money, buying and selling goods or services without relying on banks or Paypal, insuring each other directly without intermediate insurance companies.</p>
            <p>Imagine a decentralized transportation network independent of Uber, renting apartments without transaction fees, new P2P marketplaces emerging as alternatives to eBay and Amazon.</p>
            <p>Imagine open source communities where contributors are also shareholders, and in which the creation of value leads to its fair and transparent distribution.</p>
            <p>Imagine corporations that spark off extraordinary contributions of individuals and unleash innovation hindered by the rigidities of hierarchical structures.</p>
            <p>With Backfeed, this vision is beginning to unfold...</p>
        </div>
    </section>

    <aside class="tagline">Backfeed, unlocking the potential of the collaborative sharing economy
        <img class="connector hidden-xs hidden-sm" id="connector-b" src="/wp-content/themes/backfeed/assets/images/connector-b.png" />
    </aside>

    <img id="use-cases-image" class="img-responsive center-block" src="/wp-content/themes/backfeed/assets/images/people_using.png" alt="People Using" />

    <section id="use-cases" class="row only-text">
        <h2>Use Cases</h2>
        <ul class="row">
            <li class="use-cases-case">
                <h3 class="use-cases-title">Grassroots organizations</h3>
                <p>for those who value decentralization as an organisational principle, we provide the ability to organize through a grassroots bottom-up governance model.</p>
            </li>
            <li class="use-cases-case">
                <h3 class="use-cases-title">Legacy organizations</h3>
                <p>for those who value innovation and creativity, we provide the ability to create open spaces for generative action through distributed governance models..</p>
            </li>
        </ul>
        <ul class="row">
            <li class="use-cases-case">
                <h3 class="use-cases-title">Transient organizations</h3>
                <p>for those who need to orchestrate temporary and ad-hoc collaboration for a specific purpose, we provide an hybrid orchestration processes that can be fine-tuned to the emerging requirements. For example, orchestrating Collective Intelligence, hackathons, & other decentralized collaborations.</p>
            </li>
            <li class="use-cases-case">
                <h3 class="use-cases-title">Crowdsourcing-based organizations</h3>
                <p>for those who rely on the power of the crowds, we provide the ability to evaluate contributions and to reward contributors in a fair and equitable way, by turning collaborators into actual shareholders.</p>
            </li>
        </ul>
    </section>

    <aside class="tagline">backfeed, Reinventing Organizations with Equitable Distribution of Co-Created Value</aside>

    <section id="technology" class="row with-illustration">
        <div class="illustration">
            <img class="img-responsive center-block" src="/wp-content/themes/backfeed/assets/images/technology.png" alt="Technology">
        </div>
        <div class="text">
            <h2>Technology</h2>
            <p>Backfeed develops foundational tools for decentralized collaboration, syncing the spontaneous actions of millions of people to promote an era of collaboration and decentralized value production. The technological tools support:</p>
            <ul>
                <li>Decentralized Governance</li>
                <li>Fair Value Distribution</li>
                <li>Bottom-up Decision Making</li>
                <li>Incentivisation Models</li>
            </ul>
            <p>In particular, Backfeed is currently working on developing two foundational tools for decentralized collaboration:</p>
            <h3>The Backfeed protocols</h3>
            <p>a set of rules for the distribution of value among contributors to a decentralized organisation, including economic tokens and reputational rewards.</p>
            <h3>The visual browser</h3>
            <p>a navigation system for people to immediately understand the structure of decentralized organisations, so they see how they can contribute the most at any given time.</p>
        </div>
    </section>

    <?php
    $posts = get_posts([
        'posts_per_page'	=> -1,
        'post_type'			=> 'team-members'
    ]);

    if($posts): ?>

    <section id="team" class="row">
        <h2>Our Team</h2>
        <div class="team-members">

            <?php foreach($posts as $post):
                setup_postdata($post) ?>

                <div class="team-member">
                    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                        <div class="flipper">
                            <div class="front">

                                <img class="team-member-avatar" src="<?php the_field('avatar'); ?>" alt="Avatar" />
                                <div class="team-member-name"><?php the_field('name'); ?></div>
                                <div class="team-member-role"><?php the_field('role'); ?></div>
                                <div class="ellipsis"></div>

                            </div><div class="back">

                                <?php the_field('description'); ?>

                                <?php if(have_rows('social_links')): ?><div class="team-member-social-icons">

                                <?php while(have_rows('social_links')): the_row(); ?>
                                    <a href="<?php the_sub_field('social_url'); ?>" target="_blank"><i class="fa fa-<?php the_sub_field('social_network'); ?>"></i></a>
                                <?php endwhile; ?>

                                </div><?php endif; ?>

                            </div>
                        </div>
                    </div>
                </div>

            <?php endforeach; ?>

        </div>
    </section>

        <?php wp_reset_postdata();
    endif; ?>

    <?php
    $posts = get_posts([
        'posts_per_page'	=> -1,
        'post_type'			=> 'partners'
    ]);

    if($posts): ?>

        <section id="partners" class="row">
            <h2>Partners</h2>
            <div class="partners">
                <?php foreach($posts as $post):
                    setup_postdata($post) ?>

                    <a href="<?php the_field('website'); ?>"><img src="<?php the_field('logo'); ?>" alt="<?php the_title(); ?>"></a>

                <?php endforeach; ?>
            </div>
        </section>

        <?php wp_reset_postdata();
    endif; ?>


</div>
