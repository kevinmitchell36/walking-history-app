class User < ApplicationRecord
  has_secure_password
  has_many :location_users
  has_many :locations, through: :location_users
  belongs_to :follower, class_name: "User", foreign_key: "follower_id", optional: true
  belongs_to :followee, class_name: "User", foreign_key: "followee_id", optional: true
  has_many :levels

  # def level_up
  #   if location_users.where({visited: true}) == 10
  #     level += 1
  #     # return event.decription_level_1 && event.description_level_2 && event.description_level_3
  #   elsif location_users.where({visited: true}) == 5
  #     level += 1
  #     # return event.description_level_1 && description_level_2
  #   elsif location_users.where({visited: true}) == 1
  #     level += 1
  #     # return event.description_level_1 
  #   else
  #     # return event.decription_level_1
  #   end
  # end
  def level
    num_visited = location_users.where(visited: true).length
    if num_visited >= 5
      return "Scholar"
      flash[:success] = "You have reached Scholar level!"
    elsif num_visited >= 3
      return "Explorer"
      flash[:success] = "You have reached Explorer level!"
    else
      return "Adventurer"
    end
  end
end
