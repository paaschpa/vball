class Season < ActiveRecord::Base
  has_many :players
  has_many :matches
end
