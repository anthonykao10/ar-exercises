require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "pick a store (name)..."
input = gets.chomp
newStore = Store.create(name: "#{input}")
# puts newStore.valid?
# print all error messages
puts "\nerrors:\n"
newStore.errors.messages.each { |err, msg| puts "#{err}: #{msg}" }
