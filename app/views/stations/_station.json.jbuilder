json.extract! station, :id, :station_number, :station_name, :created_at, :updated_at
json.url station_url(station, format: :json)
