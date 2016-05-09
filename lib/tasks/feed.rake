namespace :feed do
  desc 'Syncs all feeds with the sources'
  task sync: :environment do
    feeds = Feed.all
    feeds.each do |f|
      puts f.title
    end
  end
end
