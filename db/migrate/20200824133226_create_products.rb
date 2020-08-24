class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, presence: true
      t.string :description
      t.integer :variant, presence: true

      t.timestamps
    end
  end
end
