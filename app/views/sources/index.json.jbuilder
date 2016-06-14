json.array!(@sources) do |source|
  json.extract! source, :id, :image_id, :name
  json.url source_url(source, format: :json)
end
