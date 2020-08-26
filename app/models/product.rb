class Product < ApplicationRecord
  has_many :variants, dependent: :destroy
  accepts_nested_attributes_for :variants
  validates :description, length: { maximum: 300 }
  default_scope { where.not(soft_deleted: true) }
end
