class AddSoftDeletedToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :soft_deleted, :boolean, :default => false
  end
end
