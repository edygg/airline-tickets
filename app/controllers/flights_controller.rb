class FlightsController < ApplicationController
	def show
		if params[:search]
			@schedule_search = Schedule.search(params[:search]).order("created_at DESC")
		else
			@schedule_search = Schedule.all.order("created_at DESC")
		end

 	end
end

