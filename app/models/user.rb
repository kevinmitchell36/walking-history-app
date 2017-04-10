class User < ApplicationRecord
  has_many :location_users
  has_many :locations, through::location_users
  belongs_to :follower, class_name: "User", foriegn_key: "follower_id"
  belongs_to :followee, class_name: "User", foreign_key: "followee_id" 
  has_many :levels
end
