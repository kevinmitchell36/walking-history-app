class AddDiscoveredToLocationUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :location_users, :discovered, :boolean
  end
end


