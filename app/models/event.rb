class Event < ApplicationRecord
  belongs_to :location
  belongs_to :category
  has_many :images

end
  