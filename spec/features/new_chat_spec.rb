# frozen_string_literal: true

require 'rails_helper'

feature 'Chat', :js do
  scenario 'Create a new chat' do
    visit '/'
    click_link 'New chat'
    expect(page).to have_content('Name')

    fill_in 'Name',	with: 'Qwerty'
    click_button 'Create Chat'
    expect(Chat.count).to eq(1)
  end
end
