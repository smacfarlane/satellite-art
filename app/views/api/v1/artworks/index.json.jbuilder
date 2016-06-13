json.array!(@artworks) do |artwork|
  json.extract! artwork, :id, :status
  json.url api_v1_artwork_url(artwork, format: :json)
end