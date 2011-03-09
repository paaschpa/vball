class AddSeasonIdToPlayer < ActiveRecord::Migration
  def self.up
    add_column :players, :season_id, :integer
  end

  def self.down
    remove_column :players, :season_id
  end
end
