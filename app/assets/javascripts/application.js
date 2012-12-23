// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready( function (){

	// $('#txsearch').focus(function(){
	// 	$(this).val("")});
var c=""
	 $('#txsearch').keyup(function(){
			
	 	// $("document").search($('#txsearch').val())
	 	// .css('background-color', 'red')	
// $("document").search($('#txsearch').val())},function(){$('table').css('background-color', 'red')
		 	var d=c
		 	c=$('#txsearch').val()
		 	
   	    	// $("td:contains("+d+")").toggleClass("class1").css();
   	    	// // $("td:contains("+d+")").css();
   	    	// $("td:contains("+c+")").toggleClass("class2").css();

$("td:contains("+d+")").css('background','#ffaa56');
   	    	// $("td:contains("+d+")").css();
   	    	$("td:contains("+c+")").css('background','red');

   	    	// .css('background', 'red');
		// $("document:contains('$('#txsearch').val()')").css('background-color', 'red')
		// .find($('#txsearch').val()).css('background-color', 'red')
		
	});

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