$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "shorten_url/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "shorten_url"
  spec.version     = ShortenUrl::VERSION
  spec.authors     = ["abdurrahman"]
  spec.email       = ["abdu.q.ah@gmail.com"]
  spec.homepage    = "https://github.com/abduqah/shorten-url.git"
  spec.summary     = "shorten_url Gem uses bijective function to hash ids, make it easier to shorten URLs and retrieve them."
  spec.description = "shorten_url shorten URLs and and resolve short URLs."
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
