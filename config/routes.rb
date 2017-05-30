DomainStatus::Engine.routes.draw do
  get :by_domain, to: 'domains#status'
end
