class Product < ApplicationRecord
  has_many :variants, dependent: :destroy
  accepts_nested_attributes_for :variants, allow_destroy: true
  validates :description, length: { maximum: 300 }
  validates :title, presence: true
  default_scope { where.not(soft_deleted: true) }
end
