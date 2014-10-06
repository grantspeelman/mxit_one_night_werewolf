require 'spec_helper'

RSpec.describe 'HowToPlayController' do
  require 'capybara'

  def rendered
    Capybara::Node::Simple.new(last_response.body)
  end

  context 'index' do
    before do
      get '/how_to_play'
    end

    it 'has a home link' do
      expect(rendered).to have_link('home', href: '/')
    end

    it 'has a roles link' do
      expect(rendered).to have_link('roles', href: '/how_to_play/roles')
    end
  end

  context 'roles' do
    before do
      get '/how_to_play/roles'
    end

    it 'has a home link' do
      expect(rendered).to have_link('home', href: '/')
    end

    it 'has a how to play link' do
      expect(rendered).to have_link('how_to_play', href: '/how_to_play')
    end
  end
end
