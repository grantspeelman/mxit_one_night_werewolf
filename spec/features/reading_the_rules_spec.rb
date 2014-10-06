require 'features_helper'

describe 'reades the rules', type: :feature do
  it 'signs me in' do
    visit '/'
    click_link 'how_to_play'
    expect(page).to have_content('Goal of the Game')
    click_link 'roles_explained'
    expect(page).to have_content('Roles')
  end
end
