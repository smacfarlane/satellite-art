json.extract! @artwork, :model, :size, :smoothness, :num_iters, :status
json.source_url attachment_url(@artwork.source, :image) unless @artwork.source.image_id.nil?
json.style_url attachment_url(@artwork, :style) unless @artwork.style_id.nil?
json.image_url attachment_url(@artwork, :image) unless @artwork.image_id.nil?
