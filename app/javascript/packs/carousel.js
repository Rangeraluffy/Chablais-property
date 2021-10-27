require("owl.carousel")

$(document).ready(function(){
  $('.owl-carousel').owlCarousel(
{      margin: 10,
      loop: true,
      autoplay:true,
      autoplayTimeout: 4000,
      autoplayHoverPause: true,
      responsive: {
        0:{
          items: 1,
          nav: false
        },
        800:{
          items: 2,
          nav: false
        },
        1500:{
          items: 3,
          nav: false
        }
      }}
  );
});
