class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.date :departure_date
      t.date :arrival_date

      t.timestamps
    end
  end
end
