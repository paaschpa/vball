class Match < ActiveRecord::Base
  belongs_to :season
  belongs_to :team
  belongs_to :opponent, :class_name => "Team"
  has_many :results

  #id
  #opponent_id
  #location
  #match_date
  #created_at
  #updated_at
  #season_id
  #team_id
end

