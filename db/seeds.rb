# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# c = Category.create!(name: 'Programing languages')

# c.products.create!(title: 'Runy book', description:'<h>Learn Ruby Programing</h>', price: 12.99, pushlished: true)
# c.products.create!(title: 'Two', description:'<h>description 2</h>', price: 15.2, pushlished: true)
# c.products.create!(title: 'Three', description:'<h>description 3</h>', price: 6.53, pushlished: false)
# c.products.create!(title: 'Four', description:'<h>description 4</h>', price: 7.32, pushlished: true)
Product.create!(title: 'No Category', description:'<h>description 4</h>', price: 7.32, pushlished: true)