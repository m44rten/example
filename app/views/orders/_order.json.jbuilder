json.extract! order, :id, :naam, :nummer, :prijs, :personen_id, :created_at, :updated_at
json.url order_url(order, format: :json)