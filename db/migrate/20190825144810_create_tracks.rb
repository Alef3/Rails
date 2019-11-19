class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :name
      t.integer :album_id
      t.integer :media_type_id
      t.integer :genre_id
      t.string :composer
      t.integer :milliseconds
      t.integer :bytes
      t.float :unit_price

      t.timestamps
    end
  end
end
