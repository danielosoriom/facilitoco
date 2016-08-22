class Users::OmniauthCallbacksController < ApplicationController

	def facebook
		@user = User.from_omniauth(request.env["omniauth.auth"])

		if @user.persisted?
			@user.remember_me = true
			sign_in_and_redirect @user, event: :authentication
		end
			session ["devise.auth"] = request.env["omniauth.auth"]
		render :edit
		return
	
	end
	def custom_sign_up
		@user = User.from_omniauth(session["devise.auth"])
		@user.update(params[:user])

		#Strong params
	end
end