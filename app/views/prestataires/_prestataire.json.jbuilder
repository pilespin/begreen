json.extract! prestataire, :id, :categorie, :nom, :remise, :prestation, :description, :ville, :imageurl, :created_at, :updated_at
json.url prestataire_url(prestataire, format: :json)
