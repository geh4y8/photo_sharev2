require 'rails_helper'

describe Photo do
  it {should have_and_belong_to_many :users}
  # it "should have many users" do
  #   user = User.create(email: "test", password: "test", password_confirmation: "test")
  #   user.photos.create(photo: "bacon.jpg")
  #   expect(user.photos[0])
end
