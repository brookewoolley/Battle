require_relative '../../app.rb'

feature 'play' do
  scenario " Players can view Points " do
    sign_in_and_play
    expect(page).to have_content("Points")
  end
end
