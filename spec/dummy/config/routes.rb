Rails.application.routes.draw do

  mount DomainStatus::Engine => "/domain_status"
end
