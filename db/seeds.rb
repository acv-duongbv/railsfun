# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Category.destroy_all

table_1 = 'products'
table_2 = 'categories'
auto_inc_val = 1

ActiveRecord::Base.connection.execute(
	"alter sequence #{table_1}_id_seq restart with #{auto_inc_val}"
)
ActiveRecord::Base.connection.execute(
	"alter sequence #{table_2}_id_seq restart with #{auto_inc_val}"
)
c = Category.create!(name: 'Programing languages')
c.products.create!(title: 'Runy book', description:'Learn Ruby Programing', price: 12.99, pushlished: true)
c.products.create!(title: 'Two', description:'description 2', price: 15.2, pushlished: true)
c.products.create!(title: 'Three', description:'description 3', price: 6.53, pushlished: false)
c.products.create!(title: 'Four', description:'description 4', price: 7.32, pushlished: true)
Product.create!(title: 'No Category', description:'description 4', price: 7.32, pushlished: true)

c = Category.create!(name: 'Other')
c.products.create!(title: 'Other book', description:'Other description', price: 0.01, pushlished: true)