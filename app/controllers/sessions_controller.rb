class SessionsController < ApplicationController
	def destroy
		session.delete :user_id
		redirect_to root_path
	end

	def create
		@auth = request.env['omniauth.auth']
		@user = User.from_oauth(@auth)
		session[:user_id] = @user.id
	end

end
