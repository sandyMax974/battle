feature 'battle app' do
  scenario 'players fill their names' do
    sign_in_and_play
    expect(page).to have_content('sandy VS finn')
  end
end
