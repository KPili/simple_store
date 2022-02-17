require "csv"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed new data every time seed script is run.
Product.destroy_all
Category.destroy_all

csv_file = Rails.root.join("db/products.csv") # Build out the absolute path for the file name
csv_data = File.read(csv_file) # Return the output of the file via File.read method

products = CSV.parse(csv_data, headers: true) # Parse out the items in this csv file, assigning true that the csv has headers

products.each do |pr|
  product_category = Category.find_or_create_by(name: pr["category"])

  next unless product_category && product_category.valid?

  new_product = product_category.products.create(
    title:          pr["name"],
    description:    pr["description"],
    price:          pr["price"],
    stock_quantity: pr["stock quantity"]
  )
end

# Commented loop for when Faker was used to fill tables with data
# 676.times do
#   Product.create(
#     title:          Faker::Commerce.product_name,
#     price:          Faker::Commerce.price,
#     stock_quantity: Faker::Number.digit
#   )
# end
