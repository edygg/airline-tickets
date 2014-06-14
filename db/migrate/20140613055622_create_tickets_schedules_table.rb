class CreateTicketsSchedulesTable < ActiveRecord::Migration
  def change
    create_table :schedules_tickets do |t|
    	t.belongs_to :ticket
    	t.belongs_to :schedule
    end
  end
end
