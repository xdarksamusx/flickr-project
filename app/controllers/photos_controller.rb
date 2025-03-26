class PhotosController < ApplicationController

  def index
 
    if params[:username].present?
      user = User.find_by(username: params[:username])
      @photos = user&.photos || []
    else
      @photos = Photo.all
    end
    


  end

  def show
    @photo = Photo.find(:id)

  end


  def new
    @photo = new Photo
  end

  def create
    @photo = Photo.new(photo_params)
  end

  def edit
  end

  def update
  end



  def destroy
  end

  private

  def photo_params
    params.require(:photo).permit(:url, :username)
  end





end
