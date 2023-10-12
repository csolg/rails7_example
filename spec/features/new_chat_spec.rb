require 'rails_helper'

feature 'Chat' do
  scenario 'Create a new chat' do
    visit '/'
    click_link 'Create a new chat'
    expect(page).to have_content('Name')
  end
end