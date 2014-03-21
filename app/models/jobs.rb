class Jobs < ActiveRecord::Base
  default_scope { order('published_at desc') }

  def self.update_from_feed(feed_url)
    feed = Feedjira::Feed.fetch_and_parse feed_url
    feed.entries.each do |entry|
      unless exists? :guid => entry.id
        create!(
            :title         => entry.title,
            :content      => entry.content,
            :url          => entry.url,
            :author       => entry.author,
            :published_at => entry.published,
            :guid         => entry.id
        )
      end
    end
  end

end
