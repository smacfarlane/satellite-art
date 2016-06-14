class AddSourceIdToArtwork < ActiveRecord::Migration[5.0]
  def change
    add_reference :artworks, :source, foreign_key: true
  end
end
