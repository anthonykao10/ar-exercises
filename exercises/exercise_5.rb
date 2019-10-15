require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# total revenue for the entire company (all stores),
sum = Store.sum('annual_revenue')
puts sum

# average annual revenue for all stores
numStore = Store.count
avgRevenue = sum / numStore
puts avgRevenue

# number of stores that are generating $1M or more in annual sales.
puts Store.where("annual_revenue < ?", 1000000).count