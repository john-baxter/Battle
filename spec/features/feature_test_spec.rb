# require 'app.rb'

feature 'Testing infrastructure' do
  scenario 'can run app and see content' do
    visit ('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
