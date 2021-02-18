feature 'View hit points' do
  scenario 'viewing opponent HP' do
    sign_in_and_play
    expect(page).to have_content("/60 HP")
  end
end
