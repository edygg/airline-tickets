class FlightsController < ApplicationController
	def show
    if City.find_by_name(params[:departure_city_id]).try(:id) and City.find_by_name(params[:arrival_city_id]).try(:id)
		  @departure = City.find_by_name(params[:departure_city_id]).id 
		  @arrival =  City.find_by_name(params[:arrival_city_id]).id

      if @departure == @arrival
        redirect_to flights_path, notice: 'Enter different cities'
      end
    else 
        redirect_to flights_path, notice: 'Path not found' 
    end



    @Schedules = Schedule.find(:all, :conditions => ["departure_city_id = ? and arrival_city_id in (?)", @departure, @arrival], :order => 'price ASC')

    
    @classTypeId = params[:class_type]
    #@classType = ClassType.find(classTypeId.to_s).name
    
 	end
end

