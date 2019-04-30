require "rails_helper"
require_relative("../signup_helper.rb")
RSpec.feature "A user can sign up", type: :feature do
  scenario "A user can sign up with email and password" do
    signup_as_user()
    visit "/"
    click_link "Sign in"
    fill_in "Email", with: "s@s.com"
    fill_in "Password", with: "12345"
    click_button("Sign in")
    expect(page).to have_content("s@s.com")
  end
end
