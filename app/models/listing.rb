class Listing < ActiveRecord::base
  belongs_to :category
  belongs_to :subcategory
end
