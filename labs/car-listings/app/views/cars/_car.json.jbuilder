json.extract! car, :id, :model, :year, :condition, :location_address, :location_city, :location_state, :location_zip, :price, :status, :sold_by, :created_at, :updated_at
json.url car_url(car, format: :json)
