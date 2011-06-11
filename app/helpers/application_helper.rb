module ApplicationHelper
  def user_team
    User.find_by_id(session[:user_id]).team
  end
end
