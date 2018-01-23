class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # Here we’ve used params to retrieve the user id. When we make the appropriate request to the Users controller,
    # params[:id] will be the user id 1, so the effect is the same as the find method User.find(1)
    # debugger
    # when in doubt put this on
  end
  def new
    # it will render new view.
    @user = User.new
    # @user is an instance variable and it is available to all methods
    # in rails @user we enable view to access this variable
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to user_url(@user)
    else
      render 'new'
    end
  end
  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
