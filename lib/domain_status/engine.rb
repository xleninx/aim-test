module DomainStatus
  class Engine < ::Rails::Engine
    isolate_namespace DomainStatus

    # initializer "domain_status.config.autoload_paths" do |app|
    #   app.config.autoload_paths << "#{Rails.root}/app/services"
    # end

    config.generators do |g|
      g.test_framework :rspec, :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end
  end
end
