class ListingsController < ApplicationController

  def mylistings

  end

  def search
    @listings = Listing.search(params)
  end
  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)

    if @listing.save
      redirect_to @listing
    else
      render new_listing_path
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  private

    def listing_params
      #allows the following params be made in the listing table
      params.require(:listing).permit(:title, :description, :city, :state, :zipcode, :category_id, :subcategory_id)
    end
end
