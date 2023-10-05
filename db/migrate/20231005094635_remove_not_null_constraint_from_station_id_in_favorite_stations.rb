class RemoveNotNullConstraintFromStationIdInFavoriteStations < ActiveRecord::Migration[7.0]
  def change
    change_column_null :favorite_stations, :station_id, true
  end
end
