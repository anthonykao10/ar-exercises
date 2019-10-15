require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "first1", last_name: "last1", hourly_rate: 10)
@store1.employees.create(first_name: "first2", last_name: "last2", hourly_rate: 20)
@store1.employees.create(first_name: "first3", last_name: "last3", hourly_rate: 30)

@store2.employees.create(first_name: "first10", last_name: "last10", hourly_rate: 100)
@store2.employees.create(first_name: "first11", last_name: "last11", hourly_rate: 110)
@store2.employees.create(first_name: "first12", last_name: "last12", hourly_rate: 120)