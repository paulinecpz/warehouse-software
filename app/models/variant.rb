class Variant < ApplicationRecord
  belongs_to :product
  validates :sku, uniqueness: true, presence: true
  validates :stock_quantity, presence: true, :numericality => { :greater_than => 0 }
end
