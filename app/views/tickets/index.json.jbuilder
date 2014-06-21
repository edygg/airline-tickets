json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :departure_date, :return_date, :category_id, :class_type_id
  json.url ticket_url(ticket, format: :json)
end

