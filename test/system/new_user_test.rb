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

  test "New user log In test dashboard and Edit Account" do
    visit new_account_registration_path
    fill_in 'First name', with: 'Automating'
    fill_in 'Last name', with: 'Testing'
    fill_in 'Email', with: 'automating74@testing.fr'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_button 'Sign up', match: :first
    click_on('Dashboard', match: :first)
    click_on('My Profile', match: :first)
    click_on('Edit my Account', match: :first)
    fill_in 'First name', with: 'Valentin'
    fill_in 'Last name', with: 'Smile'
    fill_in 'Telephone', with: '06.50.60.78.52'
    fill_in 'Current password', with: '123456'
    click_on('Update', match: :first)
  end

  test "Error Sign Up" do
    visit new_account_registration_path
    fill_in 'First name', with: 'Automating'
    fill_in 'Last name', with: 'Testing'
    fill_in 'Email', with: 'automating74@testing.fr'
    fill_in 'Password confirmation', with: '123456'
    click_button 'Sign up', match: :first
  end
end
