class RssImporter

  def self.import(source)
    puts "Importing RSS for #{source.name}"
    # rss_url = "http://feeds.nytimes.com/nyt/rss/HomePage"
    content = "" # raw content of rss feed will be loaded here
    open(source.rss_url) do |s| content = s.read end
    rss = RSS::Parser.parse(content, false)
    # puts content.inspect

    created = 0

    rss.items.each do |item|
      next if source.headlines.exists?(:guid => item.guid.to_s)

      title = HTMLEntities.new.decode(item.title)
      source.headlines.create(:guid => item.guid, :title => title, :link => item.link, :published_at => item.date.to_s)
      created += 1
    end

    puts "#{created} found\n"
    return created
  end

end

