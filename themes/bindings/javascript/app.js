// Foundation JavaScript
// Documentation can be found at: http://foundation.zurb.com/docs
$(document).foundation();
$(window).resize(function() {
    if(window.innerWidth > 585) { $(".off-canvas-wrap").removeClass("move-right"); }
});