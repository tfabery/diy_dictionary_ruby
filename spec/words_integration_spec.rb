require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word path', {:type => :feature}) do
  it "visit landing page" do
    visit('/')
    expect(page).to have_content('Add a Word')
  end

  it "goto word_form" do
    visit('/')
    click_link('add_word')
    expect(page).to have_content('Enter a Word')
  end

  it "add a word" do
    visit('/')
    click_link('add_word')
    fill_in('word', :with => 'name')
    click_button('Add')
    expect(page).to have_content('name')
  end
end
