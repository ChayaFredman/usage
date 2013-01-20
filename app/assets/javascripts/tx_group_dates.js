$(document).ready(function() {



	var d="";
	/**
	* Visualize an HTML table using Highcharts. The top (horizontal) header
	* is used for series names, and the left (vertical) header is used
	* for category names. This function is based on jQuery.
	* @param {Object} table The reference to the HTML table to visualize
	* @param {Object} options Highcharts options
	*/

	Highcharts.visualize = function(table, table2, options) {
		// the categories
		var counter = 0;
		options.xAxis.categories = [];
		$('.tt').each( function(i) {
			options.xAxis.categories.push(this.innerHTML);
			counter = counter + 1;

		});


		// the data series
		options.series = [];
		var txIdx = -1;

		$('.tr2', table).each( function(i) {
			var tr=this;
			$('.trr',tr).each( function(j) {
				var h = $(this).children('.thh').first();
				var d = $(this).children('.tdd').first();
				txIdx = txIdx + 1;
				var preData = new Array(counter);
				var counter2 = counter;
				while (--counter2 >= 0) {
					preData[counter2] = null;
				}
				preData[i] = parseFloat(d.text());
				options.series[txIdx]={
					name:$(h).text(),
					data:preData

				};
				console.log(options.series[i])


			});

		});

		var chart = new Highcharts.Chart(options);

	}



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



