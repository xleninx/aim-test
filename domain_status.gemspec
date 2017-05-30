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
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

end
