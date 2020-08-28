require 'rails_helper'

RSpec.describe Product, type: :model do
  context "#create without a title"
  it 'raise an error' do 
    expect { Product.create!(description: 'Nice but poor charger') }.to raise_error(ActiveRecord::RecordInvalid)  # test code
  end
end
