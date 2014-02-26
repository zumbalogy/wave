class CreateConvos < ActiveRecord::Migration
  def change
    create_table :convos do |t|

      t.timestamps
    end
  end
end
