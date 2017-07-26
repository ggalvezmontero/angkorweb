jQuery(document).ready(function($) {
  "use strict";

  function verify_slide(){
    $( ".slide-line" ).each(function( index ){
      var element = $(this);
      if (element.hasClass('to-slide')){

        var element_position = element.offset().top;
        var window_position = $(window).scrollTop();

        var offset = 700;

        if (element_position-offset < window_position && element_position + offset > window_position) {
          element.removeClass('to-slide invisible');

          if (index % 2 == 0){
            element.addClass('animated fadeInLeft');
          } else {
            element.addClass('animated fadeInRight');
          }
        }
      }
    });
  }

  verify_slide();

  $(window).on('scroll', function(){
    verify_slide();
  })
});