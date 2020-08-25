class Variant < ApplicationRecord
  belongs_to :product
  validates :sku, uniqueness: true
end
