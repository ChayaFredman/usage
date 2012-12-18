class CreateRxByHours < ActiveRecord::Migration
  def change
    create_table :rx_by_hours do |t|
      t.string :rx
      t.string :date1
	  t.string :hour
      t.string :count_seconds
      t.timestamps
    end
  end
end
