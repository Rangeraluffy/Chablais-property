require 'application_system_test_case'

class NewUserTest < ApplicationSystemTestCase
  test "create new user" do
    visit new_account_registration_path
    fill_in 'First name', with: 'Automating'
    fill_in 'Last name', with: 'Testing'
    fill_in 'Email', with: 'automating74@testing.fr'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_button 'Sign up', match: :first
  end
end
