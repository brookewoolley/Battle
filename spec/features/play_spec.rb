require_relative '../../app.rb'

feature 'play' do
  scenario " Players can view Points " do
    sign_in_and_play
    expect(page).to have_content("Points")
  end

  scenario " Players can attack" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Confirm attack!")
  end

  scenario "players can reduce points of opponent by attacking" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).not_to have_content("Points = 60")
    expect(page).to have_content("Points = 50")

  end
end
