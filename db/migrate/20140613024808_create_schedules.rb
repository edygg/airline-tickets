class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.belongs_to :departure_city, class_name: 'City', foreign_key: 'departure_city'
      t.belongs_to :arrival_city, class_name: 'City', foreign_key: 'arrival_city'
      t.belongs_to :airplane

      t.time :departure_time
      t.time :arrival_time
      t.decimal :price

      t.timestamps
    end

    add_index :schedules, [:departure_city_id, :arrival_city_id, :airplane_id, :departure_time, :arrival_time], unique: true, name: 'schedules_unique'
  end
end
