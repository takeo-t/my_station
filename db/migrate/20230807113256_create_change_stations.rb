class CreateChangeStations < ActiveRecord::Migration[7.0]
  def change
    create_table :change_stations, id: false do |t|
      t.integer :id, null: false, primary_key: true
      t.string :change_station
      t.string :change_station_kana
      t.string :change_on_train

      t.timestamps
    end
  end
end

