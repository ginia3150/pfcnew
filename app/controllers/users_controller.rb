class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:n_name, :email, :height, :weight, :age_id)
  end

end
