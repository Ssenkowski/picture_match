class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
        t.boolean :visible
        
      t.timestamps
    end
  end
end
