def signup_as_user
  visit "/"
  click_link "Sign up"
  fill_in "Email", with: "s@s.com"
  fill_in "Password", with: "12345"
  click_button("Sign up")
  click_button("Sign out")
end
