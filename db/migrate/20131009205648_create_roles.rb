class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :character
      t.references :movie_id
      t.references :star_id

      t.timestamps
    end
  end
end
