DomainStatus::Engine.routes.draw do
  get 'by_domain(/:domain)', to: 'domains#by_domain', as: :by_domain
end
