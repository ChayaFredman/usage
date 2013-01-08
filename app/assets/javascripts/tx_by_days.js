
$(document).ready( function (){
	alert("tx_by_days");
$('.txchange').live('click',function(){
				
	 			$(this).toggleClass("txminus");
	 			$(this).toggleClass("txplus");
	 			current_tr = $(this).closest("tr");
 				tx = current_tr.children(':first-child').next().text();
	    		date1 = current_tr.children(':first-child').next().next().text();
			    if($(this).attr('class')=="txchange txminus"){
					$(this).html("-");
	      			current_tr.after('<tr class="extendedRowTable"><td colspan=" '+ current_tr.children("td").length + '"></td></tr>')
          			$.ajax({
						type: "get",
						url: "tx_by_days/tx_h",
		   				data: "tx="+tx+"&date1="+date1,
		  				success: function(data){
            				current_tr.next().children().html(data);
            	
            			}
					});		
				}
		 		else 
				{
					$(this).html("+");
					current_tr.next().remove();
				}
			});	
});	