class SessionsController < ApplicationController
  def new
  end
  def create
    @user = User.find_by(nickname: params[:session][:nickname])
    if @user && @user.password == params[:session][:password]
      session[:user_id] = @user.id
      redirect_to '/'
    else
      render 'new'
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
