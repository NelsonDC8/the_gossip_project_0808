class UserController < ApplicationController
  before_action :authenticate_user, only: [:show]
  
  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], city: params[:city], age: params[:age], description: params[:description], password: params[:password])
      if @user.save
      	flash[:alert] = 'Just login now !'
        redirect_to new_session_path
      else
        render new_user_path
      end
  end

end

