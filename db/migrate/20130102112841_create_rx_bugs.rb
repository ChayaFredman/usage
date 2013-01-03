class CreateRxBugs < ActiveRecord::Migration
  def change
    create_table :rx_bugs do |t|

      t.timestamps
    end
  end
end
