class HomeController < ApplicationController

  def index
   @upcoming_matches = Match.includes(:opponent).where("match_date >= ?", Date.today).limit(5)
  end

end

