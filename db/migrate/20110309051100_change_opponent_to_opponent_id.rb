class ChangeOpponentToOpponentId < ActiveRecord::Migration
  def self.up
    change_column :matches, :opponent, :integer
    rename_column :matches, :opponent, :opponent_id
  end

  def self.down
    change_column :matches, :opponent, :string
    rename_column :matches, :opponent_id, :opponent
  end
end
