json.extract! house, :id, :title, :address, :price, :available, :description, :picture, :created_at, :updated_at
json.url house_url(house, format: :json)
