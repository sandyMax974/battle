require 'sinatra/base'
require 'Player'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params['Player 1']).name
    $player_2 = Player.new(params['Player 2']).name
    redirect '/play'
  end

  get '/play' do
      erb :play
  end

  get '/attack' do
    # method
    erb :attack
  end

  run! if app_file == $0

end
