feature 'shows the win page' do
  scenario 'shows the win page' do
    srand(4)
    visit('/name')
    fill_in('name', with: "Will")
    click_button('Submit')
    click_button('Paper')
    expect(page).to have_content("Well done, you win!")
  end
end