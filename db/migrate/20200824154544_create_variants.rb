class CreateVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :variants do |t|
      t.string :sku
      t.integer :stock_quantity

      t.timestamps
    end
  end
end
