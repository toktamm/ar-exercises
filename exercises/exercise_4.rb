require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |elem|
  puts "The store of #{elem.name} had an annual revenue of #{elem.annual_revenue}."
end

# careful when using conditions to not allow SQL injections. Use Array conditions instead of pure string conditions
@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)
@womens_stores.each do |elem|
  puts "The store of #{elem.name} had an annual revenue of #{elem.annual_revenue}."
end
