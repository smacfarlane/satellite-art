json.array!(@artworks) do |artwork|
  json.extract! artwork, :id, :style_id, :image_id, :model, :size, :smoothness, :num_iters
  json.url artwork_url(artwork, format: :json)
end
