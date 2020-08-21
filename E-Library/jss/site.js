$(document).ready(function () {

    $('.slick-slider').bxSlider({
        minSlides: 1,
        maxSlides: 1,
        controls: false,
        auto: true,
        pause: 6000
    });

    $(".explore-button").hover(function () {
        $(this).parent().addClass("hovered-card");
    }, function () {
        $(this).parent().removeClass("hovered-card");
    }
    );


});