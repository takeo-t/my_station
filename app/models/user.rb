class User < ApplicationRecord
    extend Devise::Models
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :trackable
    include DeviseTokenAuth::Concerns::User
end
