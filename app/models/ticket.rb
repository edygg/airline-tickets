class Ticket < ActiveRecord::Base
	# Relations
	belongs_to :category
	belongs_to :class_type
	has_and_belongs_to_many :schedules
end
