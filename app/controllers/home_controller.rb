class HomeController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id]) #app crash on find() if user is removed
    end
    #flash[:notice] = "Succesfully logged in"
    #flash[:alert] = "Invalid email or password"
  end
end
