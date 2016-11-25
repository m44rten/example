json.extract! offerte_regel, :id, :artikel, :omschrijving, :aantal, :prijs, :post, :offerte_id, :created_at, :updated_at
json.url offerte_regel_url(offerte_regel, format: :json)