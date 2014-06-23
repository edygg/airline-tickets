class FlightsController < ApplicationController
	def show
		@departure = City.find_by_name(params[:departure_city_id]).id 
		@arrival =  City.find_by_name(params[:arrival_city_id]).id
		@Schedules = Schedule.find_all_by_departure_city_id_and_arrival_city_id(@departure, @arrival)
 	end
end

