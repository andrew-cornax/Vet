class LoginController < ApplicationController

  skip_before_filter :require_login, :only => :login

  def login
  	if params[:username]
  		user = User.where(:password => params[:password]).first
  		if user
  			cookies[:username] = user.username
  		end
  		redirect_to soldiers_path
    end

  end
end
