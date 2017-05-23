class User < ApplicationRecord
  has_secure_password
  has_many :location_users
  has_many :locations, through: :location_users
  belongs_to :follower, class_name: "User", foreign_key: "follower_id", optional: true
  belongs_to :followee, class_name: "User", foreign_key: "followee_id", optional: true
  has_many :levels

  def level
    num_visited = location_users.where(visited: true).length
    if num_visited >= 5
      return "Scholar"
    elsif num_visited >= 3
      return "Explorer"
    else
      return "Adventurer"
    end
  end

  def red
    location_users.where(visited: true).length
  end

  def green
    location_users.where(discovered: true).length
  end
end
