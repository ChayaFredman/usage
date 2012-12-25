class CreateTxToDates < ActiveRecord::Migration
  def change
    create_table :tx_to_dates do |t|

      t.timestamps
    end
  end
end
