feature 'Enter names' do
  scenario 'Players can enter their names' do
    visit ('/')
    fill_in :player_1_name, with: 'John'
    fill_in :player_2_name, with: 'Daria'
    click_button 'Submit'
    expect(page).to have_content 'John vs Daria'
  end
end