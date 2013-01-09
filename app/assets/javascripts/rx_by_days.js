$(document).ready( function (){

	$('.rxchange').live('click',function(){
					var that = this;
		 			var currentTr = $(this).closest("tr");
		 			var rx = currentTr.children(':first-child').next().text();
		    		var date1 = currentTr.children(':first-child').next().next().text();
				    
				    if(	$(this).attr('class') == "rxchange rxplus"){
	          			
	          			$.ajax({
							type: "get",
							url: "rx_by_days/rx_h",
			   				data: "rx=" + rx + "&date1=" + date1,
			  				success: function(data){
			  					if (!(currentTr.next().hasClass('extendedRowTable')))
			  					{
			  						$(that).html("-");
	 								$(that).addClass("rxminus");
		 							$(that).removeClass("rxplus");
			  						currentTr.after('<tr class="extendedRowTable"><td colspan=" ' + currentTr.children("td").length + '"></td></tr>')
	            					currentTr.next().children().html(data);
	            				}
	            			}
						});
					}					
			 		else 
					{
						$(that).removeClass("rxminus");
		 				$(that).addClass("rxplus");
						$(that).html("+");
						currentTr.next().remove();
					}
	});	

});	