# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Product.destroy_all
Variant.destroy_all
puts 'Create products...'
product = Product.create(title: "Airpods Pro", description: "An awesome product")
Variant.create(sku: 'BG-101', stock_quantity: 42, product_id: product.id)
product = Product.create(title: "Beats by Dre", description: "A greaaaat product")
Variant.create(sku: 'BG-101', stock_quantity: 13, product_id: product.id)
product = Product.create(title: "Bose 700", description: "A perfect product")
Variant.create(sku: 'BG-101', stock_quantity: 0, product_id: product.id)
puts "Youpi!"