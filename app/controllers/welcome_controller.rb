class WelcomeController < ApplicationController
  def home
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
      session.delete(:user_id) unless @user
      # raise(session[:user_id])
      # binding.pry
    end
  end
end
