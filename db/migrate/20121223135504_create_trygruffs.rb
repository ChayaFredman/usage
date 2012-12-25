class CreateTrygruffs < ActiveRecord::Migration
  def change
    create_table :trygruffs do |t|

      t.timestamps
    end
  end
end
