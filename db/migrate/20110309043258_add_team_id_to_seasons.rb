class AddTeamIdToSeasons < ActiveRecord::Migration
  def self.up
    add_column :seasons, :team_id, :integer
  end

  def self.down
    remove_column :seasons, :team_id
  end
end
