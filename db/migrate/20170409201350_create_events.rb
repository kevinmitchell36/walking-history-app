class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :date
      t.string :time_of_day
      t.string :name
      t.text :description_level_1
      t.text :description_level_2
      t.text :description_level_3
      t.integer :location_id
      t.integer :category_id
      t.string :year

      t.timestamps
    end
  end
end
