require 'application_system_test_case'

class LogIn < ApplicationSystemTestCase
  test "Log In error" do
    visit account_session_path
    fill_in 'Email adress', with: 'admin@peillex.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in', match: :first
    visit '/'
  end
end
