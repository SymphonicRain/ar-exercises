require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Name a store!"
store7 = gets.chomp

@store7 = Store.create(name: store7)
if @store7.errors.any?
  puts "oh no"
  @store7.errors.each do |error|
    puts "#{error.attribute}: #{error.message}"
  end
end