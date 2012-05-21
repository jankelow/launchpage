$(document).ready(function() {
		modal = $("<div></div>").dialog({
				autoOpen: false,
				height:600,
				width: 802,
				modal: true,
				resizable: false
				});
	
	$('.dial_link a').click(function(){
		modal.html($($(this).attr("href")).html());
		modal.dialog('open');	
		return false;
		});
		
	$('.close_button').live("click", function(){
		modal.dialog('close');
		return false;
	});
	
	$('.nav_link').live("click", function(){
		link = $(this).attr("href");
		modal.html($(link).html()).hide().fadeIn("fast");
		return false;
		});

});