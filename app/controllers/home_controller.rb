class HomeController < ApplicationController

  def index
   logger.debug("HERE")
   logger.debug(params[:id])
   @team = Team.find(params[:id])
   @upcoming_matches = Match.includes(:opponent).where("team_id = ? AND match_date >= ?", @team.id, Date.today).limit(5)
  end

end

