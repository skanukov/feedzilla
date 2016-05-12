namespace :feed do
  desc 'Syncs all feeds with the sources'
  task sync: :environment do
    feeds = Feed.includes(:entries).all
    feeds.each do |feed|
      puts "Syncing #{feed.title}..."
      f = Feedjira::Feed.fetch_and_parse feed.link
      f.entries.each do |e|
        feed.entries.where(link: e.url).first_or_create(
          title: e.title,
          content: e.summary,
          published_at: e.published
        )
      end
      puts "#{feed.title} successfully synced"
    end
  end
end
