class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :gif_url
      t.string :youtube_id
      t.text :description

      t.timestamps
    end
  end
end
