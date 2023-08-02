class CreateFavoriteStations < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_stations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :station, null: false, foreign_key: true

      t.timestamps
    end
    add_index :favorite_stations, [:user_id, :station_id], unique: true
  end
end
