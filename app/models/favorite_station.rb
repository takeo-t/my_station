class FavoriteStation < ApplicationRecord
    belongs_to :user
    belongs_to :station2
  end