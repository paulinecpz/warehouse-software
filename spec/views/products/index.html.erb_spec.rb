require "rails_helper"

RSpec.describe "products/index" do
  it "displays all the products" do
    assign(:products, [
      Product.create!(:title => "Bose"),
      Product.create!(:title => "Airpods")
    ])

    render

    expect(rendered).to match /Bose/
    expect(rendered).to match /Airpods/
  end
end