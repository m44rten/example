json.extract! offerte, :id, :onderwerp, :datum, :status, :offerte_nummer, :created_at, :updated_at
json.url offerte_url(offerte, format: :json)