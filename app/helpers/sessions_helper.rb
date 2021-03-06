module SessionsHelper

private
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	    rescue ActiveRecord::RecordNotFound
	end

	def signed_in?
		!current_user.nil?
	end
	
end
