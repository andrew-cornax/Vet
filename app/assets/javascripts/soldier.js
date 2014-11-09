$(document).ready(function(){
	$('textarea').jqte();

	$("[id^=soldier_image_]").each(function(){
		var id = $(this).attr('id').match(/[0-9]+/)[0];

		$(this).on('click', function(){
			$("#soldier_dialog_"+id).dialog({
				modal:true,
				minWidth:660,
				buttons:{
					close: function(){
						$(this).dialog('close');
					}
				}
			});
		});
	});
});
