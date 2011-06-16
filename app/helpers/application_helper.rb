module ApplicationHelper
  def user_team
    User.find_by_id(session[:user_id]).team
  end

  def team_seasons(team_id)
    return Season.where("team_id = ?", team_id)
  end
end
