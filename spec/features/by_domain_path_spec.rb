require 'spec_helper'

feature "Get Domain Status" do
  include DomainStatus::Engine.routes.url_helpers
  
  scenario "when no parameters are sent" do
    visit by_domain_path
    
    expect(page).to have_content 'We could not connect to the DNS'
  end

  scenario "when wrong parameters are sent" do
    visit by_domain_path(domain: 'www.google.qwerty')
  
    expect(page).to have_content 'We could not connect to the DNS'
  end

  scenario "when correct parameters are sent" do
    visit "domain_status/by_domain/?domain=www.google.qwerty"
  
    expect(page).to have_content 'We could not connect to the DNS'
  end
  
end