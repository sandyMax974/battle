feature 'battle app' do
  scenario 'user is on homepage' do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end
end
