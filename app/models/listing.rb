class Listing < ActiveRecord::Base
  belongs_to :category
  belongs_to :subcategory
  belongs_to :user
  #some extra validation to validate that user id is present
  validates :user_id, presence: true

  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :city
  validates_presence_of :state


  #Geocode gem for searching by location (adds coordinates)
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    [city, state, zipcode].join(', ')
  end

  def self.search(params)
    listings = Listing.where(category_id: params[:category].to_i)
    listings = listings.where("title LIKE ? or description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}") if params[:search].present?
    listings = listings.near(params[:location], 20) if params[:location].present?
    listings
  end

end
