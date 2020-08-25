# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Product.destroy_all

puts "Creating variants ..."
variant_1 = { sku: 'BG-101', stock_quantity: 42}
variant_2 = { sku: 'BG-102', stock_quantity: 13}
variant_3 = { sku: 'BG-103', stock_quantity: 0}
[ variant_1, variant_2, variant_3 ].each do |attributes|
  variant = Variant.create!(attributes)
  puts "Created #{variant.sku}"
end

puts "Creating products..."
product_1 = { title: "Airpods Pro", description: "An awesome product", variant: variant_1 }
product_2 = { title: "Beats by Dre", description: "A greaaaat product", variant: variant_2 }
product_3 = { title: "Bose 700", description: "A perfect product", variant: variant_3 }

[ product_1, product_2, product_3 ].each do |attributes|
  product = Product.create!(attributes)
  puts "Created #{product.title}"
end
puts "Finished!"