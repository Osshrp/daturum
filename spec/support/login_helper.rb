module LoginHelper
  def login(email, password, action)
    click_link action
    fill_in "user_email", with: email
    fill_in "user_password", with: password
    click_button "Log in"
  end
end