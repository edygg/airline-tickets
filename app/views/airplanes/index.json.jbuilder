json.array!(@airplanes) do |airplane|
  json.extract! airplane, :id, :model
  json.url airplane_url(airplane, format: :json)
end
