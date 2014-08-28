class PhotosController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @photos = @user.photos
  end

  def new
    @user = User.find(params[:user_id])
    @photo = @user.photos.new
  end

  def create
    user = User.find(params[:user_id])
    @photo = user.photos.new(photo_params)
    if @photo.save
      redirect_to user_photos_path, notice: "Photo Added!"
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:user_id])
    @photo = @user.photos.find(params[:id])
  end

private
  def photo_params
    params.require(:photo).permit(:user_id, :description, :photo)
  end
end
