class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.integer :band_id, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :year, null: false
      t.boolean :live, null: false

      t.timestamps
    end

    add_index :albums, [:band_id, :name], unique: true
  end
end
