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
product = Product.create(title: "Airpods Pro", description: "An awesome product", created_at: "2020-08-24 15:16:33")
Variant.create(sku: 'BG-101', stock_quantity: 42, product_id: product.id)
product = Product.create(title: "Beats by Dre", description: "A greaaaat product", created_at: "2020-08-25 15:16:33")
Variant.create(sku: 'BG-102', stock_quantity: 13, product_id: product.id)
product = Product.create(title: "Bose 700", description: "A perfect product", created_at: "2020-08-26 15:16:33")
Variant.create(sku: 'BG-103', stock_quantity: 0, product_id: product.id)
product = Product.create(title: "Marshall", description: "Very fancy and good looking", created_at: "2020-08-27 15:16:33")
Variant.create(sku: 'BG-104', stock_quantity: 20, product_id: product.id)
product = Product.create(title: "Xiaomi", description: "Cheap and efficient from China", created_at: "2020-08-23 15:16:33")
Variant.create(sku: 'BG-105', stock_quantity: 30, product_id: product.id)
puts "Youpi!"