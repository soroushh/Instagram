require "rails_helper"
RSpec.feature "A user can sign up", type: :feature do
  scenario "A user can sign up with email and password" do
    visit "/sign_up"
    fill_in "Email", with: "s@s.com"
    fill_in "Password", with: "12345"
    click_button("Sign up")
    expect(page).to have_content("s@s.com")
  end
end
