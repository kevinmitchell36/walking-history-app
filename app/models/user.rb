class User < ApplicationRecord
  has_secure_password
  has_many :location_users
  has_many :locations, through: :location_users
  belongs_to :follower, class_name: "User", foreign_key: "follower_id", optional: true
  belongs_to :followee, class_name: "User", foreign_key: "followee_id", optional: true
  has_many :levels

  

end
