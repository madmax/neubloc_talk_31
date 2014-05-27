# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

team = Team.create!(name: 'Neubloc Team')

%w(grzegorz marcin kuba krzys wojtek piotrek tomek marek filip szymon jacek pawel).each do |name|
  team.members.create!(name: name, bio: Forgery(:lorem_ipsum).words(20))
end



