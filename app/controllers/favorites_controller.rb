class FavoritesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @photo = @user.photos.find(params[:photo_id])
    @favorite = @photo.favorites.new
  end

  def create
    @user = User.find(params[:user_id])
    @photo = @user.photos.find(params[:photo_id])
    @favorite = @photo.favorites.new(favorites_params)
    if @favorite.save
      redirect_to user_photo_path(@user, @photo)
    else
      render 'new'
    end
  end

  private
  def favorites_params
    params.require(:favorite).permit(:user_id, :photo_id)
  end
end
