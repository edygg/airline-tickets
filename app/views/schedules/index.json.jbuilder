json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :departure_time, :arrival_time, :departure_city_id, :arrival_city_id, :airplane_id, :price
  json.url schedule_url(schedule, format: :json)
end


       