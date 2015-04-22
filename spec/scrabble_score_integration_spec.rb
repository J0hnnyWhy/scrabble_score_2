require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and returns the word score') do
    visit('/')
    fill_in('word', :with => 'fax')
    click_button('Send')
    expect(page).to have_content(13)
  end
end
