$(document).ready( function (){

	$('.txchange').live('click',function(){
		var that = this;
		var currentTr = $(this).closest("tr");
		var tx = currentTr.children(':first-child').next().text();
		var date1 = currentTr.children(':first-child').next().next().text();

		if(	$(this).attr('class') == "txchange txplus"){

			$.ajax({
				type: "get",
				url: "tx_by_days/tx_h",
				data: "tx=" + tx + "&date1=" + date1,
				success: function(data){
					if (!(currentTr.next().hasClass('extendedRowTable')))
					{
						$(that).html("-");
						$(that).addClass("txminus");
						$(that).removeClass("txplus");
						currentTr.after('<tr class="extendedRowTable"><td colspan=" ' + currentTr.children("td").length + '"></td></tr>')
						currentTr.next().children().html(data);
					}
				}
			});
		}					
		else 
		{
			$(that).removeClass("txminus");
			$(that).addClass("txplus");
			$(that).html("+");
			currentTr.next().remove();
		}
	});	

});	