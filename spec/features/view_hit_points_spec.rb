feature 'View hit points' do
  scenario 'viewing opponent HP' do
    sign_in_and_play
    expect(page).to have_content "finn: 60HP"
  end
end
