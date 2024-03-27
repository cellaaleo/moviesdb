class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release
      t.text :synopsis
      t.string :country
      t.integer :runtime
      t.string :director
      t.string :genre

      t.timestamps
    end
  end
end
