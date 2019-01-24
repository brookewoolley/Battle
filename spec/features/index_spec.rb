require_relative '../../app.rb'

feature 'index ' do

  scenario " expects players to fill in their names via a form" do
    sign_in_and_play
    expect(page).to have_content("John")
  end

end
