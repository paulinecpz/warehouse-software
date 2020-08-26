class Product < ApplicationRecord
  has_many :variants, dependent: :destroy
  validates :description, length: { maximum: 300 }
  default_scope { where.not(soft_deleted: true) }
end
