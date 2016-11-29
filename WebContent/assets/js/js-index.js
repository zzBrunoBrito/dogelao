
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

},1000)

setInterval(function (){
	$("nav>a:first-child").toggleClass("hidden")
	
},1300)



 $('select').material_select();
      

        // Declare parallax on layers        
        jQuery('.parallax-layer').parallax(
                {mouseport: jQuery("#port")},
                {xparallax: "8%", yparallax: "6%", yorigin: 0.9},
                {xparallax: "10%", yparallax: "8%", yorigin: 0.9}
        );


$('.modal').modal({
	ready: function (){
		$("#login-username").focus();
	}
});

$(window).keypress(function (e){
	if(e.which == 32)
		$('#modal1').modal('open');
		
})
};
