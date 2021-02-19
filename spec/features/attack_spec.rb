feature 'Attack' do
  scenario 'display a confirmation message' do
    sign_in_and_play
    expect(page).to have_button('Attack')
    click_button 'Attack'
    expect(page).to have_content 'sandy attacked finn'
  end
  scenario 'remove 10 HP from opponent' do
    sign_in_and_play
    expect(page).to have_button('Attack')
    click_button 'Attack'
    click_button('OK')
    expect(page).not_to have_content 'finn: 60HP'
    expect(page).to have_content 'finn: 50HP'
  end
end
