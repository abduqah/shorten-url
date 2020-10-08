# ShortenUrl
Shorten Url is a simple urls shorting gem, using bijective function to hash ids and convert it to short url corresponding to original url

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'shorten_url', github: 'abduqah/shorten-url', ref: 'main'
```
And then execute:
```bash
$ bundle
```
After you install Url Shortener run the generator:
```bash
$ rails g shorten_urt {any name eg. shorten_urt}
```
This generator will create a migration to create the shorten_url_short_urls table.
```bash
$ rails db:migrate
```

## Usage
To generate a Shortened URL object for the URL “http://example.com” within your controller / models do the following:
```ruby
  UrlShortener::ShortenedUrl.shorten(url: "http://example.com")
```
To find the full url using the shortend link, do the following:
```ruby
  UrlShortener::ShortenedUrl.resolve(short_url: "http://xyz.try")
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
