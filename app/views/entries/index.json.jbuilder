json.array!(@entries) do |entry|
  json.extract! entry, :id, :feed_id, :title, :link, :content, :published_at
  json.url entry_url(entry, format: :json)
end
