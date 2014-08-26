require 'features_helper'

describe 'joins a werewolf game', type: :feature do
  it 'signs me in' do
    visit '/'
    expect(page).to have_content 'Welcome to mxit one night ultimate werewolf.'
  end
end
