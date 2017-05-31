module DomainStatus
  class Engine < ::Rails::Engine
    isolate_namespace DomainStatus

    config.generators do |g|
      g.test_framework :rspec, :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end

    Gem.loaded_specs['domain_status'].dependencies.each do |d|
      require d.name
    end

  end
end
