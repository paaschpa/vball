class Match < ActiveRecord::Base
  belongs_to :season
  belongs_to :team
  belongs_to :opponent, :class_name => "Team"
  has_many :results
end

