json.extract! bedrijf, :id, :bedrijfs_naam, :kvk, :email, :website, :straat, :nummer, :postcode, :land, :plaats, :prijs_id, :created_at, :updated_at
json.url bedrijf_url(bedrijf, format: :json)