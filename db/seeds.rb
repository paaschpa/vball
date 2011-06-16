# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Team.delete_all
Player.delete_all
User.delete_all
Season.delete_all
Match.delete_all

t = Team.create(:name => "Warren", :conference => "NSC", :address => "Gurnee, IL")

p1 = Player.create(:first_name => "Tyler", :last_name => "Smith", :number => 1)
p2 = Player.create(:first_name => "Chris", :last_name => "Sibayan", :number => 2)
p3 = Player.create(:first_name => "Dillon", :last_name => "Schaeffer", :number => 2)

t.players.push(p1)
t.players.push(p2)
t.players.push(p3)
t.save

t2 = Team.create(:name => "Highland Park", :conference => "NSC", :address => "Highland Park, IL")

t3 = Team.create(:name => "Deerfield", :conference => "NSC", :address => "Deerfield, IL")

u = User.create(:name => "warren", :password => "P@ssw0rd")

t.users.push(u)
t.save

s = Season.create(:year => 2011)
s.players.push(p1)
s.players.push(p2)
s.players.push(p3)
s.save
t.seasons.push(s)
t.save

Match.create(:team => t, :opponent => t2, :location => "Highland Park", :match_date => "2011-03-23", :season => s) 
Match.create(:team => t, :opponent => t3, :location => "Deerfield", :match_date => "2011-04-06", :season => s) 

p4 = Player.create(:first_name => "Tyler", :last_name => "Smith", :number => 1)
p5 = Player.create(:first_name => "Chris", :last_name => "Sibayan", :number => 2)
p6 = Player.create(:first_name => "Dillon", :last_name => "Schaeffer", :number => 2)

t.players.push(p4)
t.players.push(p5)
t.players.push(p6)
t.save

s = Season.create(:year => 2010)
s.players.push(p4)
s.players.push(p5)
s.players.push(p6)
s.save

t.seasons.push(s)
t.save




