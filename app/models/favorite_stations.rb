class FavoriteStation < ApplicationRecord
    belongs_to :user
    belongs_to :station
  end