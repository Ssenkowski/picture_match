class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :position
      t.string :text
      t.boolean :flipped
      t.integer :match_id

      t.timestamps
    end
  end
end
