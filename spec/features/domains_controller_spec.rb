require 'spec_helper'
feature "Get Domain Status" do
  # background do
  #   User.make(email: 'user@example.com', password: 'caplin')
  # end

  scenario "" do
    visit "/status"
  end
  # scenario "Signing in with correct credentials" do
  #   visit '/sessions/new'
  #   within("#session") do
  #     fill_in 'Email', with: 'user@example.com'
  #     fill_in 'Password', with: 'caplin'
  #   end
  #   click_button 'Sign in'
  #   expect(page).to have_content 'Success'
  # end

  # given(:other_user) { User.make(email: 'other@example.com', password: 'rous') }

  # scenario "Signing in as another user" do
  #   visit '/sessions/new'
  #   within("#session") do
  #     fill_in 'Email', with: other_user.email
  #     fill_in 'Password', with: other_user.password
  #   end
  #   click_button 'Sign in'
  #   expect(page).to have_content 'Invalid email or password'
  # end
end