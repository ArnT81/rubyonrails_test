class ApplicationController < ActionController::Base
	before_action :set_current_user

	def set_current_user
		if session[:user_id]
			Current.user = User.find_by(id: session[:user_id]) #app crash on find() if user is removed
		end
	end

	def require_user_logged_in
		redirect_to sign_in_path, alert: "You must be signed in to continue!" if Current.user.nil?
	end
end
