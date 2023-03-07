require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 39, less_than: 201 }
  validates :last_name, presence: true


end
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name: "Buttons", hourly_rate: 70)
@store1.employees.create(first_name: "Mike", last_name: "Hannigan", hourly_rate: 70)
@store2.employees.create(first_name: "Bobby", last_name: "Bobby", hourly_rate: 70)
@store2.employees.create(first_name: "Ken", last_name: "Adams", hourly_rate: 70)
@store2.employees.create(first_name: "Regina", last_name: "Phalange", hourly_rate: 60)