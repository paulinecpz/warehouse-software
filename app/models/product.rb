class Product < ApplicationRecord
  scope :not_deleted, -> { where(soft_deleted: false) }
  scope :deleted, -> { where(soft_deleted: true) }
end
