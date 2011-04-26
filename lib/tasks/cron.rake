desc "Run import:rss"
task :cron do
  Rake::Task["import:rss"].invoke
end