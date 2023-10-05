class DropStationsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :stations
  end
end
