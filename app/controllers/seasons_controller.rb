class SeasonsController < ApplicationController
  
  def index
    @seasons = Team.find(params[:team_id]).seasons

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @seasons }
    end
  end

end
