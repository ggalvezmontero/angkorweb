$(document).ready(function(){
    $('.center').slick({
      centerPadding: '30px',
      slidesToShow: 7,
      autoplay: true,
      autoplaySpeed: 750,
      responsive: [
        {
          breakpoint: 768,
          settings: {
            arrows: false,
            centerMode: true,
            centerPadding: '10px',
            slidesToShow: 5
          }
        },
        {
          breakpoint: 480,
          settings: {
            arrows: false,
            centerMode: true,
            centerPadding: '10px',
            slidesToShow: 3
          }
        }
      ]
    });

  });