require_relative '../setup'


puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# stores = Store.all
# id             | bigint                         |           | not null | nextval('stores_id_seq'::regclass)
# name           | character varying              |           |          |
# annual_revenue | integer                        |           |          |
# mens_apparel   | boolean                        |           |          |
# womens_apparel | boolean                        |           |          |
# created_at     | timestamp(6) without time zone |           | not null |
# updated_at     | timestamp(6) without time zone

=begin
class Store < ApplicationRecord
  self.primary_key = "id"
end
store1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

=end
class Store < ActiveRecord::Base
  has_many :employees
end
store1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
store2 = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
store3 = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
stores = Store.all
puts stores.count