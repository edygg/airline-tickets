json.array!(@class_types) do |class_type|
  json.extract! class_type, :id, :name, :rate
  json.url class_type_url(class_type, format: :json)
end
