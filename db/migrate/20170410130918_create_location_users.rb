class CreateLocationUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :location_users do |t|
      t.integer :user_id
      t.integer :location_id
      t.boolean :visited

      t.timestamps
    end
  end
end
