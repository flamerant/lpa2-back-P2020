json.extract! burger, :id, :name, :price, :image, :nutriscore, :code, :created_at, :updated_at, :nutriments
json.url burger_url(burger, format: :json)
