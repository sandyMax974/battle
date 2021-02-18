def sign_in_and_play
  visit('/')
  fill_in('Player 1', with: 'sandy')
  fill_in('Player 2', with: 'finn')
  click_button('Submit')
end
