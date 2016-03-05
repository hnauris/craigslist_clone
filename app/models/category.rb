class Category < ActiveRecord::base
  has_many :subcategories
  has_many :listings
end
