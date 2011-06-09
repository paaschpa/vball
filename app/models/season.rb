class Season < ActiveRecord::Base
  has_many :players
  has_many :matches

  def upcoming_matches
    self.matches.order('match_date DESC').limit(5)
  end

  #id
  #year
  #created_at
  #updated_at
  #team_id
end
