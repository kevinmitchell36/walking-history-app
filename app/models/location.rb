class Location < ApplicationRecord
  has_many :location_users 
  has_many :users, through: :location_users 
  has_many :images 
  has_many :events 
  has_many :categories, through: :events
end
