class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.integer :match_id
      t.integer :team_score
      t.integer :opponent_score

      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
