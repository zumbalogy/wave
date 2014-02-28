class CreateConvoUserJoins < ActiveRecord::Migration
  def change
    create_table :convo_user_joins do |t|
        t.integer :user_id
        t.integer :convo_id
        t.timestamps
    end
  end
end
