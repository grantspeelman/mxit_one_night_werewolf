require 'spec_helper'

RSpec.describe 'MxitOneNightWerewolf::App::HowToPlayHelper' do
  subject { MxitOneNightWerewolf::App.new.helpers }

  it 'should split on spaces and link on first word' do
    expect(subject.smart_link_to('new game', '/test')).to eql '<a href="/test">new</a> game'
  end

  it 'should split only on spaces' do
    expect(subject.smart_link_to('new_game', '/test')).to eql '<a href="/test">new_game</a> '
  end
end
