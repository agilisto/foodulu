# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  include 
  def page_title
    @page_title || "Foodulu #{controller_name.capitalize} : #{action_name.capitalize}" 
  end
  
  def login_account
    unless logged_in?
      link_to 'Login', new_session_path
    else
      link_to current_user.login, user_path(current_user)
    end
  end
end
