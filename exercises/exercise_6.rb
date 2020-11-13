require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# Exercise 6: One-to-many association

# Let's tell Active Record that the two tables (stores and employees) are in fact related via the store_id column.
# Add the following code directly inside the Store model (class): has_many :employees
# Add the following code directly inside the Employee model (class): belongs_to :store

# Add some data into employees. Here's an example of one (note how it differs from how you create stores):
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

# Go ahead and create some more employees using the create method. Create a bunch under @store1 and @store2
@store1.employees.create(first_name: "Tony", last_name: "Stark", hourly_rate: 50)
@store1.employees.create(first_name: "Thor", last_name: "Odinson", hourly_rate: 40)
@store2.employees.create(first_name: "Natasha", last_name: "Romanoff", hourly_rate: 50)
@store2.employees.create(first_name: "Scott", last_name: "Lang", hourly_rate: 40)
@store2.employees.create(first_name: "Bruce", last_name: "Banner", hourly_rate: 40)
@store2.employees.create(first_name: "Peter", last_name: "Parker", hourly_rate: 30) 

