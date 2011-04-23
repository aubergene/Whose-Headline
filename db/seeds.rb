# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


Source.create(:name => 'The New York Times', :logo_url => "http://graphics8.nytimes.com/images/misc/nytlogo152x23.gif", :rss_url => "http://feeds.nytimes.com/nyt/rss/HomePage")

Source.create(:name => 'The Guardian', :logo_url => "http://static.guim.co.uk/static/104069/zones/news/images/logo.gif", :rss_url => "http://feeds.guardian.co.uk/theguardian/rss")

