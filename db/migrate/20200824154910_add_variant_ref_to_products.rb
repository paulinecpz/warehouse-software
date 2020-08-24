class AddVariantRefToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :variant, foreign_key: true
  end
end
