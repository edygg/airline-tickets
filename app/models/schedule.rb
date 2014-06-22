class Schedule < ActiveRecord::Base
	# Relations
	belongs_to :departure_city, class_name: 'City', foreign_key: 'departure_city_id'
	belongs_to :arrival_city, class_name: 'City', foreign_key: 'arrival_city_id'
	belongs_to :airplane
	has_and_belongs_to_many :tickets

  def self.search(search)
  	if search  		
  		#find(:all, :conditions => ['departure_city_id LIKE ? AND arrival_city_id LIKE ?' , departure_city_id_search, arrival_city_id_search])
  		  where("departure_city_id like ?", "%#{search}%") 
  	else
  		find(:all)
  	end
  end
end
