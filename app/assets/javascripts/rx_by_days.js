// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
// $(function () {
$(document).ready( function (){


$('.rxchange').live('click',function(){

			 	$(this).toggleClass("rxminus");
			    $(this).toggleClass("rxplus");
			 	current_tr = $(this).closest("tr");
		 		rx = current_tr.children(':first-child').next().text();
			    date1 = current_tr.children(':first-child').next().next().text();
				if($(this).attr('class')=="rxchange rxminus"){
					$(this).html("-");
					current_tr.after('<tr class="extendedRowTable"><td colspan=" '+ current_tr.children("td").length + '"></td></tr>')
				    $.ajax({
		  			    type: "get",
						url: "rx_by_days/rx_h",
						data: "rx="+rx+"&date1="+date1,
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
})


