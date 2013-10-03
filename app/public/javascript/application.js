function addFavouritesHandler() {
	$(".star.solid").click(function() {
		$(this).animate({opacity: 1}, 1000);
	});
}

$(function() {
	addFavouritesHandler();
})



// console.log("hello, makers academy!");
// $(document).ready(function() { //this line can be shortened to $(function() {
// 	console.log($("*").length);
// }); 

// not particularly useful code but my first Javascript animation

// beginningfunction animateLinks() {
// 	$('.link').show(1000);
// }

// $(function() {
// 	animateLinks();
// })