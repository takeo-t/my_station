stations = JSON.parse(File.read(Rails.root.join('db', 'StationsData.json')))['StationsData']
stations.each do |station_data|
  Station.create(station_data)
end