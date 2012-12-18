class CreateTxByHours < ActiveRecord::Migration
  def change
     create_table :tx_by_hours do |t|
     t.string :tx
      t.string :date1
	  t.string :hour
      t.string :count_seconds
      t.timestamps
    end
  end
end
