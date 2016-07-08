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

  it "goto word page" do
    visit('/')
    click_link('add_word')
    fill_in('word', :with => 'hi')
    click_button('Add')
    click_link('hi')
    expect(page).to have_content('hi')
  end
end

describe('definition path', {:type => :feature}) do
  it "goto definition_form" do
    visit('/')
    click_link('add_word')
    fill_in('word', :with => 'hello')
    click_button('Add')
    click_link('hello')
    click_link('add_definition')
    expect(page).to have_content('Enter a Definition')
  end

  it "add definition" do
    visit('/')
    click_link('add_word')
    fill_in('word', :with => 'howdy')
    click_button('Add')
    click_link('howdy')
    click_link('add_definition')
    fill_in('definition', :with => 'a word to greet others')
    click_button('Add')
    expect(page).to have_content('a word to greet others')
  end
end
