class CreateScoreBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :score_boards do |t|
      t.string :username
      t.integer :userid
      t.integer :score
      t.integer :rank

      t.timestamps
    end
  end
end
