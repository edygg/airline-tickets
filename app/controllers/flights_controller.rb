class FlightsController < ApplicationController
	def show
		#if params[:search]
			#@schedule_search = Schedule.search(params[:search]).order("created_at DESC")
		#else
			#@schedule_search = Schedule.all.order("created_at DESC")
		#end
    
    origin = params[:origin]
    destination = params[:destination]
    
    originId = City.find_by(name: origin)
    destinationId = City.find_by(name: destination)
    
    @result = buscar(originId.id, destinationId.id)
 	end
  
  def buscar(origen, destino)
    #Busqueda directa del origen al destino
    array = ActiveRecord::Base.connection.execute("select * from schedules where departure_city_id = 'origen' and arrival_city_id = 'destino'")
    
    #Si la busqueda fue exitosa, retorna el array
    if array.any?
      return array
      
      #De lo contrario, se busca el destino por escalas
    else
      arraySchedules = ActiveRecord::Base.connection.execute("select * from schedules")
      arrayResultado = Array.new
      destinoTemp = destino
      
      #Recorre el array en reversa
      arraySchedules.reverse_each do |row|        
        #Si se encuentra la ciudad destino
        if row[2] == destinoTemp #row[2] = arrival_city_id
          #Se guarda la ruta(informacion | fila)
          arrayResultado.push(row)
          
          #El nuevo destino es la ciudad origen actual
          destinoTemp = row[1] #row[1] = departure_city_id
        end
      end
      return arrayResultado
    end
  end
end

