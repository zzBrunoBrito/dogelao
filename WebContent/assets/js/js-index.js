window.onload = function () {

    setTimeout(function () {
        $('.logo').addClass("bounceIn");
    },1000);

    setTimeout(function () {
        $('.service-name, .service-name-shadow').addClass("bounceIn");
    },1500);

    setTimeout(function () {
        $('nav').addClass("slideInDown");
    },1800);


var greetings = ["wow", "such fun", "so doge", "so much doge rain", "such navbar", "such home", "so rounded border", "so many accounts", "dogelão", "so much #BFA961", "so much hold spacebar"];
var lastgreeting;
var number = 1;

setInterval(function () {

    //prevent last greeting from repeating itself
    while(lastgreeting == greetings[number]){
        number = Math.floor(Math.random() * greetings.length);
    }
    $(".phrase").html(greetings[number]);
    lastgreeting = greetings[number];

},1000);


$(document).mouseover(function (event) {

})
};

