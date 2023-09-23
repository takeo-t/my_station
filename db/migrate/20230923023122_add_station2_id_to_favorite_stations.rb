class AddStation2IdToFavoriteStations < ActiveRecord::Migration[7.0]
  def change
    add_column :favorite_stations, :station2_id, :integer
    add_reference :favorite_stations, :station2, foreign_key: true
  end
end
