$(document).ready(function(){
	$('input[type="submit"]').click(function() {
	  $('#notice').html('Please wait...').removeClass('highlight');
	  $('#uname_wrapper').hide();
	  $('#repos').hide();
	  $('#send_mail').hide();
	});

	// $('#lookup_form').bind('ajax:success', function(evt, data, status, xhr){
 //    $('#notice').html('GitHub user found');
 //  });

 //  $('#lookup_form').bind('ajax:failure', function(evt, data, status, xhr){
 //    $('#notice').html('GitHub user not found').addClass('highlight');
 //  });
});