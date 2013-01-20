class TxByDay < ActiveRecord::Migration
  def up
  end
  def change
    create_table :tx_by_days do |t|
      t.string :tx
      t.string :date1
      t.string :count_minutes
      t.timestamps
    end
  end
  def down
  end
end
