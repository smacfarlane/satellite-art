json.extract! @artwork, :model, :size, :smoothness, :num_iters, :status
json.style_url attachment_url(@artwork, :style) unless @artwork.style_id.nil?
json.image_url attacheent_url(@artwork, :image) unless @artwork.image_id.nil?
