$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $("tr").not(':first').hover(
  function () {
    $(this).css("background","rgba(255,255,255,0.5)");
  }, 
  function () {
    $(this).css("background","");
  });  

	$(function() {
		$('a#trigger').hover(function(e) {
	    $('div#pop-up').show()
		      .css('top', e.pageY)
		      .css('left', e.pageX)
		      .appendTo('body');
		  }, function() {
		    $('div#pop-up').hide();
		});
	});

	$(".hide").click(function() {
		$(this).fadeOut('fast');
	})

	// $( "p" ).hover(function() {
	//   $( this ).fadeOut( 100 );
	//   $( this ).fadeIn( 500 );
	// });

	function hideBabies(){
		$(".info").children().hide();
	}

	hideBabies()

	$('#step-1').click(function(){
		hideBabies();
		$("#s1").toggle('slow');
	})

	$('#step-2').click(function(){
		hideBabies();
		$("#s2").toggle('slow');
	})

	$('#step-3').click(function(){
		hideBabies();
		$("#s3").toggle('slow');
	})



});
