# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:name => 'Bob Bobaloo ', :university_id => 11111111, :email => 'a@a.com', :password => 'password', :type => 'Admin')
User.create(:name => 'Anne Annette', :university_id => 0000000, :email => 'b@b.com', :password => 'password', :type => 'Instructor')
User.create(:name => 'Darby Darbo', :university_id => 2222222, :email => 'c@c.com', :password => 'password', :type => 'Student')
