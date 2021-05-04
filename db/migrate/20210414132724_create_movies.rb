class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.integer :year, null: true
      t.text :description, null: true
      t.string :image_url, null: true
      t.boolean :is_showing, null: false
      t.timestamps
    end

    add_index :movies, :name, unique: true
  end
end
