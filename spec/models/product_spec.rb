require 'rails_helper'

RSpec.describe Product, type: :model do
  context "#create without a title"
  it 'raise an error' do 
    expect { Product.create!(description: 'Nice but poor charger') }.to raise_error(ActiveRecord::RecordInvalid)  # test code
  end

  describe '#sync_product_description' do
    product = Product.create(title: 'Bose 5000', description: 'Wrong description')

    it "update property description" do
      expect { product.update(description: "New description from Pauline") }.to change { product.reload.description }
    end
  end
end
