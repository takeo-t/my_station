# stations = JSON.parse(File.read(Rails.root.join('db', 'StationsData.json')))['StationsData']
# stations.each do |station_data|
#   Station.create(station_data)
# end


stations = JSON.parse(File.read(Rails.root.join('db', 'meitetu_sta.json')))

stations.each do |station_data|
  Station2.create(station_data)
end

# change_stations = JSON.parse(File.read(Rails.root.join('db','change_station.json')))
# change_stations.each do |change_station_data|
#   ChangeStation.create(change_station_data)
# end

# change_stations = JSON.parse(File.read(Rails.root.join('db','change_station.json')))
# change_stations.each do |change_station_data|
#   change_station = ChangeStation.find_or_initialize_by(id: change_station_data["id"])
#   change_station.update(change_station_data)
# end
