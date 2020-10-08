module ShortenUrl
  class ShortUrl < ActiveRecord::Base
    validates :url, presence: true
    validates :short_url, uniqueness: true

    after_create :save_short_url_to_db

    def self.resolve(short_url:)
      hashed_id = remove_url_protocol(short_url)
      id = bijective_decode(hashed_id)

      return nil unless id

      ShortenUrl::ShortUrl.find(id).url
    end

    def self.shorten(url:)
      exists = ShortenUrl::ShortUrl.find_by_url(url)

      return exists.short_url

      record = ShortenUrl::ShortUrl.create!(url: url)
      hashed_id = bijective_encode(record.id)

      short_url = add_url_protocol(hashed_id)
    end

    private
    
    KEYS = "Z0aY1b2cX3dW4eV5fU6gT7hS8iR9jKLMNOPQklmnopqrstuvwxyzABCDEFGHIJ".split(//)

    def bijective_encode(i)
      return KEYS[0] if i == 0

      s = ''
      base = KEYS.length

      while i > 0
        s << KEYS[i.modulo(base)]
        i /= base
      end
      s.reverse
    end

    def bijective_decode(s)
      i = 0
      base = KEYS.length

      s.each_char { |c| i = i * base + KEYS.index(c) }
      i
    end

    def add_url_protocol(s)
      "http://#{s}.q-shorten.try"
    end

    def remove_url_protocol(s)
      s_no_suffix = s.split('.q-shorten.try')[0]
      s_no_prefix = s_no_suffix('http://')[0]
    end

    def save_short_url_to_db
      hashed_id = bijective_encode(id)

      self.short_url = add_url_protocol(hashed_id)
      save
    end
  end
end