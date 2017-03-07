(function($) {
  "use strict"; // Start of use strict

  var phrases = [
  "Valor que impulsa tu crecimiento",
  "Innovación que potencia tus beneficios",
  "Soluciones que atienden tus necesidades",
  "Tecnologías que agilizan tus procesos y servicios",
  "Cercanía que genera tu confianza"
  ];

  $('.center').not('.slick-initialized').slick({
    centerPadding: '30px',
    slidesToShow: 7,
    autoplay: true,
    autoplaySpeed: 1000,
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

  var $carousel = $('#carouselHeader');
  $carousel.carousel();

  var active = $carousel.find('li.active');
  var index = active.data('slide-to');
  $('#phrase').text(phrases[index]);

  $carousel.bind('slide.bs.carousel', function (e) {
    active = $carousel.find('li.active');
    index = ( active.data('slide-to') + 1 ) % 5;

    $('#phrase').text(phrases[index]);
  });

  $(".accordion").each(function(index){
    $(this).click(function(){
      this.classList.toggle("active");

      var panel = this.nextElementSibling;
      if (panel.style.maxHeight){
        panel.style.maxHeight = null;
      } else {
        panel.style.maxHeight = panel.scrollHeight + "px";
      } 

      var icon = this.firstElementChild;
      icon.classList.toggle("down");
    })
  })

  $("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("active");
  });


})(jQuery); // End of use strict