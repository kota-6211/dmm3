class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @post_images = @user.post_images
  end

  def edit
  end
end
