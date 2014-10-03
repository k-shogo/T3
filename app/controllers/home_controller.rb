class HomeController < ApplicationController
  def index
    user = current_user || User.guest.new
    case
    when user.admin?
      redirect_to declares_path
    when user.general?
      redirect_to declares_path
    else
      redirect_to new_user_registration_path
    end
  end
end
