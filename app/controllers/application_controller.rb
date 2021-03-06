class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :current_user, :require_login


  def require_login
  	if @current_user.nil?
  		redirect_to soldiers_path
  	end
  end

  def current_user
  	@current_user = User.where(:username => cookies[:username]).first
  end
end
