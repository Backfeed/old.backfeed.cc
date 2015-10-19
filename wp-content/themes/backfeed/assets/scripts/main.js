/* ========================================================================
 * DOM-based Routing
 * Based on http://goo.gl/EUTi53 by Paul Irish
 *
 * Only fires on body classes that match. If a body class contains a dash,
 * replace the dash with an underscore when adding it to the object below.
 *
 * .noConflict()
 * The routing is enclosed within an anonymous function so that you can
 * always reference jQuery with $, even when in .noConflict() mode.
 * ======================================================================== */

(function($) {

  // Use this variable to set up the common and page specific functions. If you
  // rename this variable, you will also need to rename the namespace below.
  var Sage = {
    // All pages
    'common': {
      init: function() {
        // JavaScript to be fired on all pages
        document.createElement("picture");

        $(window).scroll(function() {
          var header = $('#main-header-container');
          if ($(this).scrollTop() > 1) {
            header.addClass("sticky");
          } else {
            header.removeClass("sticky");
          }
        });
      },
      finalize: function() {
        // JavaScript to be fired on all pages, after page specific JS is fired
      }
    },
    // Home page
    'home': {
      init: function() {
        // JavaScript to be fired on the home page
        // SMOOTH SCROLLING
        $('a[href*=#]:not([href=#])').click(function() {
          if (location.pathname.replace(/^\//,'') === this.pathname.replace(/^\//,'') && location.hostname === this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
            if (target.length) {
              var headerHeight = parseInt($('#main-header-container').height());

              // manually trigger sticky header before attempting to scroll
              var htmlElement = $(document.documentElement);
              if (htmlElement.scrollTop() === 0) htmlElement.scrollTop(1);

              $('html,body').animate({
                // subtracting the height of the header and an additional magic 50
                scrollTop: target.offset().top - headerHeight - 50
              }, 1000);

              return false;
            }
          }
        });

        var partnerImages = $('.partner img');
        partnerImages.on('mouseenter', function(e) {
          var i = $(e.target).closest('.partner').index() + 1;
          var partnerLabel = $('.partner-label').filter(':nth-of-type('+i+')');
          partnerLabel.animate({'opacity': 1});
        });

        partnerImages.on('mouseleave', function(e) {
          var i = $(e.target).closest('.partner').index() + 1;
          var partnerLabel = $('.partner-label').filter(':nth-of-type('+i+')');
          partnerLabel.animate({'opacity': 0});
        });
      },
      finalize: function() {
        // JavaScript to be fired on the home page, after the init JS
      }
    },
    // About us page, note the change from about-us to about_us.
    'about_us': {
      init: function() {
        // JavaScript to be fired on the about us page
      }
    }
  };

  // The routing fires all common scripts, followed by the page specific scripts.
  // Add additional events for more control over timing e.g. a finalize event
  var UTIL = {
    fire: function(func, funcname, args) {
      var fire;
      var namespace = Sage;
      funcname = (funcname === undefined) ? 'init' : funcname;
      fire = func !== '';
      fire = fire && namespace[func];
      fire = fire && typeof namespace[func][funcname] === 'function';

      if (fire) {
        namespace[func][funcname](args);
      }
    },
    loadEvents: function() {
      // Fire common init JS
      UTIL.fire('common');

      // Fire page-specific init JS, and then finalize JS
      $.each(document.body.className.replace(/-/g, '_').split(/\s+/), function(i, classnm) {
        UTIL.fire(classnm);
        UTIL.fire(classnm, 'finalize');
      });

      // Fire common finalize JS
      UTIL.fire('common', 'finalize');
    }
  };

  // Load Events
  $(document).ready(UTIL.loadEvents);

})(jQuery); // Fully reference jQuery after this point.
