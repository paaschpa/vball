class Team < ActiveRecord::Base
  has_many :players
  has_many :users
  has_many :seasons

  def current_season
   self.seasons.order('year DESC').limit(1)[0]
  end

  #id
  #name
  #conference
  #address
  #created_at
  #updated_at
end
