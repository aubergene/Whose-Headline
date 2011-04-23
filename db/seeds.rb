# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


Source.create(:name => 'The New York Times', :logo_url => "http://graphics8.nytimes.com/images/misc/nytlogo152x23.gif", :rss_url => "http://feeds.nytimes.com/nyt/rss/HomePage")

Source.create(:name => 'The Guardian', :logo_url => "http://static.guim.co.uk/static/104069/zones/news/images/logo.gif", :rss_url => "http://feeds.guardian.co.uk/theguardian/rss")

# Source.create(:name => 'Perez Hilton', :logo_url => "http://img.perezhilton.com/images/perezhilton_celebrity-gossip_travolta2.jpg", :rss_url => "http://img.perezhilton.com/?feed=rss2")

Source.create(:name => 'ESPN', :logo_url => "http://a2.espncdn.com/prod/assets/espn_top_nav_logo_109x27.png", :rss_url => "http://sports-ak.espn.go.com/espn/rss/news")

Source.create(:name => 'New York Daily News', :logo_url => "http://assets.nydailynews.com/img/static/hdr_logo.png", :rss_url => "http://www.nydailynews.com/news/index_rss.xml")

Source.create(:name => 'Mashable', :logo_url => "http://5.mshcdn.com/wp-content/themes/v7/img/Mashable_shadow_logo.png", :rss_url => "http://feeds.mashable.com/mashable")

Source.create(:name => 'Al-Jazeera English', :logo_url => "http://english.aljazeera.net/Media/ver2/Images/header_text2.jpg", :rss_url => "http://english.aljazeera.net/Services/Rss/?PostingId=2007731105943979989")

Source.create(:name => 'New Yorker', :logo_url => "http://www.newyorker.com/images/elements/print/newyorker_printlogo.gif", :rss_url => "http://www.newyorker.com/services/rss/feeds/everything.xml")

Source.create(:name => 'Forbes', :logo_url => "http://images.forbes.com/media/assets/header_baked/forbes_logo_main.gif", :rss_url => "http://www.forbes.com/news/index.xml")

Source.create(:name => 'National Enquirer', :logo_url => "http://www.nationalenquirer.com/sites/nationalenquirer.com/themes/nationalenquirer/logo.png", :rss_url => "http://www.nationalenquirer.com/rss.xml")


# Source.create(:name => '', :logo_url => "", :rss_url => "")
