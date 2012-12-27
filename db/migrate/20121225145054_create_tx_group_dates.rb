class CreateTxGroupDates < ActiveRecord::Migration
  def change
    create_table :tx_group_dates do |t|

      t.timestamps
    end
  end
end
