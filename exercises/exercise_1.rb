require_relative '../setup'


puts "Exercise 1"
puts "----------"

# Your code goes below here ...

=begin
class Store < ApplicationRecord
  self.primary_key = "id"
end
store1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

=end
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :carries_at_least_one_type_of_apparrel

  def carries_at_least_one_type_of_apparrel
    if mens_apparel == true || womens_apparel == true
    else
      errors.add(:inventory, "needs to have at least one type of inventory")
    end
  end



end
store1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
store2 = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
store3 = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
stores = Store.all
puts stores.count