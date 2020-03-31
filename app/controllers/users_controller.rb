class UsersController < ApplicationController

def index

	@users = User.all
	@use = User.new

end
def new

	@book = Book.new

end
def edit

	@user = user.find(params[:id])

end

def create

	@user = User.new(name: params[:name], email: params[:email])

    if @user.save
      flash[:notice] = "Welcome! You have signed up successfully."
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
end
def update

    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]

    if @user.save
      flash[:notice] = "You have updated user successfully."
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
end
def login

	@user = User.find_by(email: params[:email], password: params[:password])
    if @user
      session[:user_id] = @user.id

      flash[:notice] = "Signed in successfully."
      redirect_to("/users/index")
    else
      @email = params[:email]
      @password = params[:password]
      render("top")
    end
end
def destroy

    reset_session
    flash[:notice] = "Signed out successfully."
    redirect_to root_path
end

