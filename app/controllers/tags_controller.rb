class TagsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @photo = @user.photos.find(params[:photo_id])
    @tag = @photo.tags.new
  end

  def create
    @user = User.find(params[:user_id])
    @photo = @user.photos.find(params[:photo_id])
    @tag = @photo.tags.new(tags_params)
    if @tag.save
      redirect_to user_photo_path(@user, @photo)
    else
      render 'new'
    end
  end

  private
  def tags_params
    params.require(:tag).permit(:user_id, :photo_id)
  end
end
