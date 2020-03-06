require './app.rb'

feature 'Testing infrastructure' do
  scenario 'can run app and see content' do
    visit ('/test')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

# feature 'Enter the names' do
#   scenario 'PLayers can enter their names into a form' do
#     visit ('/')
#     expect(page).to have_content 'Roadrunner vs Wilie E Coyote'
#   end
# end

feature 'Enter names' do
  scenario 'Players can enter their names' do
    visit ('/')
    fill_in :player_1_name, with: 'John'
    fill_in :player_2_name, with: 'Daria'
    click_button 'Submit'
    expect(page).to have_content 'John vs Daria'
  end
end

feature 'See P2 HP' do
  scenario 'P2 HP is visible' do
    visit ('/')
    fill_in :player_1_name, with: 'John'
    fill_in :player_2_name, with: 'Daria'
    click_button 'Submit'
    expect(page).to have_content "Daria's hit points = 80"
  end
end

