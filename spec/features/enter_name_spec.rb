feature 'enter name' do
  scenario 'fill out form and have it returned' do
    visit('/name')
    fill_in('name', with: 'Will')
    click_button('Submit')
    expect(page).to have_content("Will has entered the game")
  end
end