class AddChangeTrainToChangeStations < ActiveRecord::Migration[7.0]
  def change
    add_column :change_stations, :change_train, :string
  end
end
