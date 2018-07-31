class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    #1 Pour form et form-tag, utiliser l'instruction suivante :

    @user = User.new name: params[:name], email: params[:email], bio: params[:bio]


    #2 Pour form_for, utiliser l'instruction suivante :

    #@user = User.new name: params[:user][:name], email: params[:user][:email], bio: params[:user][:bio]

    if @user.valid?
      @user.save
      redirect_to show_path name: @user.name
    else
      redirect_to error_path
    end
  end

  def show
    @user = User.find_by(name: params[:name])
  end

  def error
  end
end
