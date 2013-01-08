$(document).ready(function() {
	//debugger;
 //var table2 = document.getElementById('tdetails');
alert("tx_group_dates");
 var d="";
        /**
         * Visualize an HTML table using Highcharts. The top (horizontal) header
         * is used for series names, and the left (vertical) header is used
         * for category names. This function is based on jQuery.
         * @param {Object} table The reference to the HTML table to visualize
         * @param {Object} options Highcharts options
         */
        // alert("ניסיון חדש");
         Highcharts.visualize = function(table, table2, options) {
            // the categories
            var counter = 0;
            options.xAxis.categories = [];
            $('.tt').each( function(i) {
                options.xAxis.categories.push(this.innerHTML);
              	counter = counter + 1;

            });
            //alert(counter);
     // $('.tr2', table).each( function(i) {
     // 	var tr=this;
     // 	$('.thh',tr).each( function(j) {
     // 		 var tr=this;
     // 		 if(i==0 && j==0)
     // 		 {
     //       options.series: [{
     //        data: [{
     //            name: $(tr).text(),
     //            color: '#00FF00',
     //            y: 1
            
     //        }]
     //     }]
     //     alert(options.series);
     // }
     //    });
        
     //    });


     // the data series
            options.series = [];
            var txIdx = -1;
   
			$('.tr2', table).each( function(i) {
				 var tr=this;

				 // alert("לולאה חיצונית");
				// $('th,td',tr).each( function(i) {
					$('.trr',tr).each( function(j) {
						var h = $(this).children('.thh').first();
						var d = $(this).children('.tdd').first();
						txIdx = txIdx + 1;
					// alert("לולאה פנימית");
					var preData = new Array(counter);
					 var counter2 = counter;
					    while (--counter2 >= 0) {
					        preData[counter2] = null;
					    }
					preData[i] = parseFloat(d.text());
					options.series[txIdx]={
						name:$(h).text(),
						data:preData
						//options.series[j].data.push(parseFloat($('.tdd').innerHTML))
					};
				console.log(options.series[i])
				
				
				 // options.series[i].data.push(parseFloat($(t).innerHTML));
     //             alert(options.series[i].data);
								
				});
				
			});

            var chart = new Highcharts.Chart(options);

        }
   // alert("לפני הגדרת הtable'");
        

        var table = document.getElementById('table_tx'), 
          table2 = document.getElementById('tdetails'),
           options = {
            chart: {
                renderTo: 'container',
                type: 'column'
            },
            title: {
                text: 'Data extracted from a HTML table in the page'
            },
            xAxis: {
                  
            },
            yAxis: {
                title: {
                    text: 'Units'
                }
            },
            tooltip: {
                formatter: function() {
                    return '<b>'+ this.series.name +'</b><br/>'+
                        this.y +' '+ this.x;
                }
            },
            plotOptions: {
                column: {
                    stacking: 'normal'
                }
            },
        };
    Highcharts.visualize(table,table2,options);
});    



