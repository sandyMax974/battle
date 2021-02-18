feature 'battle app' do
  scenario 'players fill their names' do
    visit('/')
    fill_in('Player 1', with: 'sandy')
    fill_in('Player 2', with: 'finn')
    click_button('Submit')
    expect(page).to have_content('sandy VS finn')
  end
end
