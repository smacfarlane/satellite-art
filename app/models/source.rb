class Source < ApplicationRecord
  attachment :image

  validates :name, presence: true
  # validates :image_id, presence: true

  has_many :artworks
end
