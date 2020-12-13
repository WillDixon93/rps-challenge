feature 'select weapon' do
  scenario 'it shows available "weapons"' do 
    visit('/name')
    fill_in('name', with: "Will")
    click_button('Submit')
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end
end