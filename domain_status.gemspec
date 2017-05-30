$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "domain_status/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "domain_status"
  s.version     = DomainStatus::VERSION
  s.authors     = ["Lenin Luque"]
  s.email       = ["xleninx@gmail.com"]
  s.homepage    = "https://github.com/xleninx"
  s.summary     = "Service for get http status of domains"
  s.description = "Service for get http status of domains"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2.4"
  s.add_dependency "slim-rails", "~> 3.1.2"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency "sqlite3", "~> 1.3.7"

end
