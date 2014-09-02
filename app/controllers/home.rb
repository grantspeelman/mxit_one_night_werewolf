MxitOneNightWerewolf::App.controllers :home do
  get :index, :map => '/' do
    render 'home/index'
  end

  get '/test_airbrake' do
    raise 'testing errors'
  end
end
