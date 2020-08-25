class Product < ApplicationRecord
  has_many :variant
  scope :not_deleted, -> { where(soft_deleted: false) }
  scope :deleted, -> { where(soft_deleted: true) }
end
