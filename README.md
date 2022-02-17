# Progress Log

### Part 1

- Part 1 - A New Rails Application complete.

### Part 2

- Part 2 - Start

  1. Generate a new model called Category with a single string property called "name".
  2. To avoid foreign key issues you will first need to delete all the data in your products table. Jump into a rails console from the command line using "rails c" and then run "Product.destroy_all".
  3. Use a migration to add a foreign key reference from your Product model to a category: rails g migration, add_category_to_products category:references rails db:migrate
  4. Add the associations (belongs_to / has_many) to the Category and Product models.
  5. Create a products.csv file in your db folder and fill it with the contents found at https://gist.githubusercontent.com/stungeye/8cf3bae394fc1c0132775a4a3a82e119/raw/e914662da24b1333f20647f0840fd25885af582f/products.csv.
  6. Add require "csv" to the top of your db/seeds.rb file.
  7. Rewrite your db/seeds.rb file such that it now pulls in product and category data from your products.csv file. See appendix below for some assistance on how to pull data from a CSV file using csv library.
  8. Update your product index and show views such that all products are display with the name of their associated category.
  9. Be sure to avoid a N+1 issue by loading your categories along side your products in the products controller's index action: @products = Product.includes(:category).all

* Part 2 - Loading Data From a CSV complete.
