 /**
   * Hero carousel indicators
   */
 let heroCarouselIndicators = select("#hero-carousel-indicators")
 let heroCarouselItems = select('#heroCarousel .carousel-item', true)

 heroCarouselItems.forEach((item, index) => {
   (index === 0) ?
   heroCarouselIndicators.innerHTML += "<li data-bs-target='#heroCarousel' data-bs-slide-to='" + index + "' class='active'></li>":
     heroCarouselIndicators.innerHTML += "<li data-bs-target='#heroCarousel' data-bs-slide-to='" + index + "'></li>"
 });