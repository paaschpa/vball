class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.string :name
      t.string :conference
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :teams
  end
end
