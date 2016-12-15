class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :genre
      t.string :title
      t.string :director
      t.string :starring
      t.integer :rating

      t.timestamps
    end
  end
end
