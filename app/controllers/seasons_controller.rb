class SeasonsController < ApplicationController
  
  def index
    @seasons = Team.find(params[:team_id]).seasons

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @seasons }
    end
  end

  def season_change
    session[:current_season] = params[:season]
    results = "changed"
    render :text=>results.to_json
  end

end
