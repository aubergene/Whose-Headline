namespace :import do

  desc "Pull headlines from RSS for each source"
  task :rss => [:environment] do
    Source.all.each do |source|
      RssImporter.import(source)
    end
  end

  desc "Da bomb!"
  task :reset do
    Rake::Task["db:migrate:reset"].invoke
    Rake::Task["db:seed"].invoke
    Rake::Task["import:rss"].invoke
  end

end