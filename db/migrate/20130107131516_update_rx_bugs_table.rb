class UpdateRxBugsTable < ActiveRecord::Migration
  	def change
		drop_table :rx_bugs
		create_table :rx_bugs do |t|

		    t.string :rx             
		    t.string :tx             
		    t.string :start_time     
		    t.string :end_time       
		    t.string :id_events_start
		    t.string :id_events      
		    t.string :rx1            
		    t.string :tx1            
		    t.string :start_time1    
		    t.string :end_time1     
		    t.string :id_events_start1
		    t.string :id_events_start1     
		    t.timestamps
	  	end
	end
end
