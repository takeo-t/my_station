class User < ApplicationRecord
    extend Devise::Models
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :trackable
    include DeviseTokenAuth::Concerns::User

    has_many :favorite_stations
    has_many :stations, through: :favorite_stations
end
