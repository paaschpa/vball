class Player < ActiveRecord::Base
  belongs_to :season
  has_many :stats
end
