// NOTE 3: USED TO HAVE ONE-WAY TRANSITION
// function addFavouritesHandler() {
// 	$(".star.solid").click(function() {
// 		$(this).animate({opacity: 1}, 1000);
// 	});
// }

function addFavoritesHandler() {
	$(".star.solid").click(function(event) {
		// get the link this star belongs to
		var link = $(this).parent();
		// get a boolean value for favorited
		// double negation casts any value to boolean
		var favorited = !!$(link).data("favorited");
		// decide what the opacity is going to be
		var newOpacity = favorited ? 0 : 1;
		// toggle the 'favorited' variable on the link element
		$(link).data("favorited", !favorited);
		//perform the animation
		$(this).animate({opacity: newOpacity}, 1000);
	});
}

$(function() {
	addFavoritesHandler();
})


// NOTE 1: FIRST FORAY INTO jQUERY
// console.log("hello, makers academy!");
// $(document).ready(function() { //this line can be shortened to $(function() {
// 	console.log($("*").length);
// }); 


// NOTE 2:
// not particularly useful code but my first Javascript animation

// beginningfunction animateLinks() {
// 	$('.link').show(1000);
// }

// $(function() {
// 	animateLinks();
// })