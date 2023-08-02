class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :lineName
      t.string :stationNum
      t.string :stationName
      t.string :trackNum
      t.string :position
      t.string :positionColor
      t.string :color

      t.timestamps
    end
  end
end
