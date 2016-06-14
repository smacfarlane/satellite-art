class Artwork < ApplicationRecord
  MODEL_TYPES = %w(vgg inception).freeze
  STATUS = %w(pending error finished).freeze

  attachment :style
  attachment :image

  validates :model, inclusion: { in: MODEL_TYPES }
  validates :size, numericality: { greater_than_or_equal_to: 100, less_than_or_equal_to: 512 }
  validates :num_iters, numericality: { greater_than_or_equal_to: 100, less_than_or_equal_to: 1000 }
  validates :status, inclusion: { in: STATUS }

end
