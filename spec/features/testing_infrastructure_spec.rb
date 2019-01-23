require_relative '../../app.rb'

feature 'homepage ' do
  # scenario " says testing infrastructure working!" do
  #   visit("/")
  #   expect(page).to have_content "Testing infrastructure working!"
  # end

  scenario " expects players to fill in their names via a form" do
    visit("/")
    fill_in('name', with: 'John')
  end
end