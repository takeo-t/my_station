class RemoveForeignKeyFromFavoriteStations < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :favorite_stations, :stations
  end
end
