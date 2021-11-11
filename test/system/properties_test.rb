require 'application_system_test_case'

class PropertiesTest < ApplicationSystemTestCase
  test "Log In has agent and create new propety" do
    visit new_account_registration_path
    fill_in 'First name', with: 'Automating'
    fill_in 'Last name', with: 'Testing'
    fill_in 'Email', with: 'automating74@testing.fr'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_button 'Sign up', match: :first
    click_on('Dashboard', match: :first)
    click_on('New property', match: :first)
    click_on('Create Property', match: :first)
    fill_in 'property[name]', with: 'House'
    fill_in 'property[price]', with: '500000'
    fill_in 'property[rooms]', with: '5'
    fill_in 'property[bathrooms]', with: '1'
    fill_in 'property[bedrooms]', with: '3'
    fill_in 'property[area]', with: '98'
    fill_in 'property[garages]', with: '2'
    fill_in 'property[details]', with: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    click_button 'Save property', match: :first
  end

  test "Log In has Agent Delete property" do
    visit new_account_registration_path
    fill_in 'First name', with: 'Automating'
    fill_in 'Last name', with: 'Testing'
    fill_in 'Email', with: 'automating74@testing.fr'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_button 'Sign up', match: :first
    click_on('Dashboard', match: :first)
    click_on('New property', match: :first)
    click_on('Create Property', match: :first)
    fill_in 'property[name]', with: 'House'
    fill_in 'property[price]', with: '500000'
    fill_in 'property[rooms]', with: '5'
    fill_in 'property[bathrooms]', with: '1'
    fill_in 'property[bedrooms]', with: '3'
    fill_in 'property[area]', with: '98'
    fill_in 'property[garages]', with: '2'
    fill_in 'property[details]', with: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    click_button 'Save property', match: :first
    click_on('Dashboard', match: :first)
    click_on('Destroy', match: :first)
  end
end
