# Progress Log

### Part 1

- Part 1 - A New Rails Application complete.

### Part 2

- Part 2

  1. Generate a new model called Category with a single string property called "name".
  2. To avoid foreign key issues you will first need to delete all the data in your products table. Jump into a rails console from the command line using "rails c" and then run "Product.destroy_all".
  3. Use a migration to add a foreign key reference from your Product model to a category: rails g migration, add_category_to_products category:references rails db:migrate
  4. Add the associations (belongs_to / has_many) to the Category and Product models.
  5. Create a products.csv file in your db folder and fill it with the contents found at https://gist.githubusercontent.com/stungeye/8cf3bae394fc1c0132775a4a3a82e119/raw/e914662da24b1333f20647f0840fd25885af582f/products.csv.
  6. Add require "csv" to the top of your db/seeds.rb file.
