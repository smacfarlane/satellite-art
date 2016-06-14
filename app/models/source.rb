class Source < ApplicationRecord
  attachment :image

  validates :name, :presence
end
