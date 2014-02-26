class CreateCarriers < ActiveRecord::Migration
  def change
    create_table :carriers do |t|
        t.integer :convo_id
        t.integer :parent_carrier_id
        t.timestamps
    end
  end
end
