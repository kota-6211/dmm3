class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @post_images = @user.post_images.page(params[:page])

  end

  def edit
    @user = User.find_by(id: params[:id])
  end
  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    redirect_to user_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
