class CreateGatherings < ActiveRecord::Migration
  def change
    create_table :gatherings do |t|
      t.string :name
      t.string :company
      t.integer :gather_level
      t.integer :x_coords
      t.integer :y_coords

      t.timestamps null: false
    end
  end
end
