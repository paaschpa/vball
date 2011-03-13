class CreateStats < ActiveRecord::Migration
  def self.up
    create_table :stats do |t|
      t.integer :player_id
      t.integer :match_id
      t.integer :team_id
      t.integer :opponent_id
      t.integer :games_played
      t.integer :attack_kills
      t.integer :attack_errors
      t.integer :attacks_total
      t.integer :assists
      t.integer :block_solos
      t.integer :block_assists
      t.integer :serve_total
      t.integer :serve_aces
      t.integer :serve_errors
      t.integer :reception_errors
      t.integer :reception_1
      t.integer :reception_2
      t.integer :reception_3
      t.integer :digs
      t.integer :ball_handling_errors
      t.integer :block_errors

      t.timestamps
    end
  end

  def self.down
    drop_table :stats
  end
end
