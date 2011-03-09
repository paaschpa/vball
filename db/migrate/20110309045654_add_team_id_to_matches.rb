class AddTeamIdToMatches < ActiveRecord::Migration
  def self.up
    add_column :matches, :team_id, :integer
  end

  def self.down
    remove_column :matches, :team_id
  end
end
