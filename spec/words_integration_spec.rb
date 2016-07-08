require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('root path', {:type => :feature}) do
  it "visit landing page" do
    visit('/')
    expect(page).to have_content('Words')
  end
end
