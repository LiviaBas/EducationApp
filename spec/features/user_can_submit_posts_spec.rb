require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    visit "/login"
    fill_in "username", with: "testuser1"
    fill_in "password", with: "password"
    click_button "Log In"
    
    visit "/posts"
    click_link "New post"
    fill_in "Content", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
  end
end