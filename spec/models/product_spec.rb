require '../../app/models/product.rb'

RSpec.describe Product, type: :model do
  describe '#variants' do
    it do
      is_expected.to have_many(:variants).dependent(:destroy)
    end
  end

  describe '#title' do
    it do
      is_expected.to have(:title)
    end
  end

  describe '#description' do
    it do
      is_expected.to have(:description)
    end
  end
end
