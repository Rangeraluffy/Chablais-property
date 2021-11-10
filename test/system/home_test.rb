require 'application_system_test_case'

class HomeTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit '/'
  end

  test "visiting all pages" do
    visit '/'
    click_on('Properties', match: :first)
    click_on('Blog', match: :first)
    click_on('Contact', match: :first)
    click_on('Log in', match: :first)
    click_on('Sign up', match: :first)
    click_on('en', match: :first)
    click_on('fr', match: :first)
    click_on('it', match: :first)
    click_on('Peillex Property - Thonon', match: :first)
    click_on('Peillex Property - Douvaine', match: :first)
    click_on('Peillex Property - Domaine de Coudrée', match: :first)
  end
end
