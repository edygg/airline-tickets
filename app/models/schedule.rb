class Schedule < ActiveRecord::Base
	# Relations
	belongs_to :departure_city, class_name: 'City', foreign_key: 'departure_city_id'
	belongs_to :arrival_city, class_name: 'City', foreign_key: 'arrival_city_id'
	belongs_to :airplane
	has_and_belongs_to_many :tickets

  scope :search, ->(departure) { where(departure_city_id: City.find_by_name(departure) ) }

end
