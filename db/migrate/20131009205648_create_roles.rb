class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :character
      t.integer :movie_id
      t.integer :star_id

      t.timestamps
    end
  end
end
