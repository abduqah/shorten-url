$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "shorten_url/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "shorten-url"
  spec.version     = ShortenUrl::VERSION
  spec.authors     = ["abdulrahman"]
  spec.email       = ["abdu.q.ah@gmail.com"]
  spec.homepage    = "https://github.com/abduqah/shorten-url.git"
  spec.summary     = "url_shortener is a Rails Engine that makes it easy to create shortened URLs for your rails application."
  spec.description = "url_shortener is a Rails Engine Gem that makes it easy to create and interpret shortened URLs on your own domain from within your Rails application. Once installed Shortener will generate, store URLS and \"unshorten\" shortened URLs for your application visitors."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2"
end
