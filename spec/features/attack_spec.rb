feature 'Attack' do
  scenario 'display a confirmation message' do
    sign_in_and_play
    expect(page).to have_button('Attack')
    click_button 'Attack'
    expect(page).to have_content 'sandy attacked finn'
  end
end
