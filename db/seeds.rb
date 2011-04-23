# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


User.create(provider: "twitter", uid: "6289902", name: "Julian Burgess", nickname: "aubergene", url: "http://twitter.com/aubergene", admin: true)

Source.create(:name => 'The New York Times', :logo_url => "nytlogo379x64.png", :rss_url => "http://feeds.nytimes.com/nyt/rss/HomePage")

Source.create(:name => 'The Guardian', :logo_url => "Guardian.png", :rss_url => "http://feeds.guardian.co.uk/theguardian/rss")

# Source.create(:name => 'Perez Hilton', :logo_url => "http://img.perezhilton.com/images/perezhilton_celebrity-gossip_travolta2.jpg", :rss_url => "http://img.perezhilton.com/?feed=rss2")

Source.create(:name => 'ESPN', :logo_url => "ESPN.png", :rss_url => "http://sports-ak.espn.go.com/espn/rss/news")

Source.create(:name => 'New York Daily News', :logo_url => "DailyNews.png", :rss_url => "http://www.nydailynews.com/news/index_rss.xml")

Source.create(:name => 'Mashable', :logo_url => "Mashable.png", :rss_url => "http://feeds.mashable.com/mashable")

Source.create(:name => 'Al-Jazeera English', :logo_url => "AlJazeera.png", :rss_url => "http://english.aljazeera.net/Services/Rss/?PostingId=2007731105943979989")

Source.create(:name => 'New Yorker', :logo_url => "NewYorker.png", :rss_url => "http://www.newyorker.com/services/rss/feeds/everything.xml")

Source.create(:name => 'Forbes', :logo_url => "Forbes.png", :rss_url => "http://www.forbes.com/news/index.xml")

Source.create(:name => 'National Enquirer', :logo_url => "Enquirer.png", :rss_url => "http://www.nationalenquirer.com/rss.xml")


# Source.create(:name => '', :logo_url => "", :rss_url => "")
