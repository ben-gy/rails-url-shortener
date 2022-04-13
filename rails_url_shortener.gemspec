require_relative "lib/rails_url_shortener/version"

Gem::Specification.new do |spec|
  spec.name        = "rails_url_shortener"
  spec.version     = RailsUrlShortener::VERSION

  spec.authors     = ["a-chacon"]
  spec.email       = ["andres.ch@protonmail.com"]

  spec.homepage    = "https://www.github.com/a-chacon/rails_url_shortener"
  spec.summary     = "Rails url shortener engine."
  spec.description = "RailsUrlShortener is a simple engine that provide to your rail's app the functionalities for short URLs. Like bitly.com, but working on your project only."
  spec.license     = "MIT"

  spec.required_ruby_version     = ">= 2.7.0"
  spec.required_rubygems_version = ">= 1.8.11"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.metadata = {
    "bug_tracker_uri"   => "https://www.github.com/a-chacon/rails_url_shortener/issues",
    "changelog_uri"     => "https://www.github.com/a-chacon/rails_url_shortener/releases/tag/v#{RailsUrlShortener::VERSION}",
    "documentation_uri" => "https://github.com/a-chacon/rails_url_shortener/blob/main/README.md",
    "source_code_uri"   => "https://github.com/a-chacon/rails_url_shortener/tree/v#{RailsUrlShortener::VERSION}",
    "rubygems_mfa_required" => "true"
  }

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.2.3"
  spec.add_dependency "browser", ">= 5.3.0"
  spec.add_dependency "bundler", ">= 1.15.0"
  
end
