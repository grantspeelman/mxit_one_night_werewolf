require 'spec_helper'

RSpec.describe 'HomeController' do
  require 'capybara'

  def rendered
    Capybara::Node::Simple.new(last_response.body)
  end

  before do
    get '/'
  end

  it 'has a feedback link' do
    expect(rendered).to have_link('feedback', href: '/feedback')
  end

  it 'has a profile link' do
    expect(rendered).to have_link('profile', href: '/profile')
  end

  it 'has a buy_credits link' do
    expect(rendered).to have_link('buy_credits', href: '/purchase_transactions')
  end

  it 'has a feedback link' do
    expect(rendered).to have_link('redeem', href: '/redeem_winnings')
  end
end
