class Station2 < ApplicationRecord
    has_many :favorite_stations
    self.primary_key = 'id'
end
