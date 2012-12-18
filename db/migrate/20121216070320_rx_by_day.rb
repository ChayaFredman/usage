class RxByDay < ActiveRecord::Migration
  def up
  	
end
def change
     create_table :rx_by_days do |t|
     t.string :rx
      t.string :date1
	  t.string :count_minutes
      t.timestamps
    end
 end
  def down
  
  end
end
