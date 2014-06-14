class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.belongs_to :category
      t.belongs_to :class_type

      t.date :departure_date
      t.date :return_date

      t.timestamps
    end
  end
end
