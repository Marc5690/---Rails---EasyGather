class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password
      t.string :profile_image
      t.string :profile_text
      t.integer :gather_points
      t.boolean :privacy

      t.timestamps null: false
    end
  end
end
