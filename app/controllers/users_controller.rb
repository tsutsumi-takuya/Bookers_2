class UsersController < ApplicationController

def index

	@users = User.all
	@use = User.new

end
def new

	@user = User.new

end
def edit

	@user = user.find(params[:id])

end
def show

  @users = Book.all

end

def create

	@user = User.new(name: params[:name], email: params[:email])

    if @user.save
      flash[:notice] = "Welcome! You have signed up successfully."
      redirect_to user_path(@user.id)
    else
      redirect_to user_new_path
    end
end
def update

    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    
    if @user.save
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :index
    end
end
def user_params
    params.require(:user).permit(:name, :email, :password)
end
end