class TagsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @photo = @user.photos.find(params[:photo_id])
    @tag = @photo.tags.new
  end
end
