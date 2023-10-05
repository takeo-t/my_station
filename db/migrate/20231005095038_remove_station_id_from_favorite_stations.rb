class RemoveStationIdFromFavoriteStations < ActiveRecord::Migration[7.0]
  def change
    remove_column :favorite_stations, :station_id, :bigint
  end
end
