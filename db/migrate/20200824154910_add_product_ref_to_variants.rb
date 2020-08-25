class AddProductRefToVariants < ActiveRecord::Migration[5.2]
  def change
    add_reference :variants, :product, foreign_key: true, null: false
  end
end
