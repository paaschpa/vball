class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.integer :opponent_id
      t.string :location
      t.date :match_date

      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end
