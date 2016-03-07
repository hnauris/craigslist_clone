class ListingsController < ApplicationController
  #Require logging in for new and create actions
  before_filter :authenticate_user!, only: [:new, :create]
  #Requires to be the right user for these actions
  before_filter :is_user?, only: [:edit, :update, :delete, :destroy]

  def mylistings
    @listings = Listing.where(user: current_user)
  end

  def search
    @listings = Listing.search(params)
  end

  def new
    @listing = Listing.new
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
    redirect_to @listing
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to mylistings_path
  end

  def create
    @listing = Listing.new(listing_params)
    #this is a devise gem thing for finding and using the current logged in user


    if @listing.save
      @listing.user = current_user
      redirect_to @listing
    else
      flash[:alert] = @listing.errors.full_messages.to_sentence
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

    def is_user?
      @listing = Listing.find(params[:id])
      unless @listing.user == current_user
        redirect_to root_path, alert: "Sorry, you are not the owener of this listing!"
      end
    end

end
