feature 'battle app' do
  scenario 'user is on homepage' do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end

  # scenario 'user fill their names' do
  #   visit("/")
  #   expect(page).to have_field('Player 1')
  #   # expect(page).to have_selector("input")
  # end
end
