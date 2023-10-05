class SetPrimaryKeyForStation2s < ActiveRecord::Migration[7.0]
  def change
    execute "ALTER TABLE station2s ADD PRIMARY KEY (id);"
  end
end
