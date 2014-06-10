json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :departure_time, :arrival_time, :price
  json.url schedule_url(schedule, format: :json)
end
