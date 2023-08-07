class CreateStation2s < ActiveRecord::Migration[7.0]
  def change
    create_table :station2s, id: false do |t|
      t.string :line_name
      t.string :station_num
      t.string :station_name
      t.string :station_name_kana
      t.integer :track_num
      t.string :position
      t.boolean :rpd_ltd_exp
      t.boolean :limited_exp
      t.boolean :rpd_exp
      t.boolean :exp
      t.boolean :semi_exp
      t.string :position_color
      t.string :color
      t.boolean :change_station

      t.integer :id, null: false

      t.timestamps
    end
  end
end
