require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
enable :sessions

  # before do
  #   @game = Game.new
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params['Player 1'])
    player_2 = Player.new(params['Player 2'])
    $game = Game.new(player_1, player_2)
    # $player_1 = Player.new(params['Player 1']) # TO BE CHANGE LATER!!!
    # $player_2 = Player.new(params['Player 2']) # TO BE CHANGE LATER!!!
    redirect '/play'
  end

  get '/play' do
    @game = $game # what is this step for?
    erb :play
  end

  get '/attack' do
    # @player_1 = $player_1 # TO BE CHANGE LATER!!!
    # @player_2 = $player_2 # TO BE CHANGE LATER!!!
    @game = $game # what is this step for?
    @game.attack(@game.player_2)
    erb :attack
  end

  run! if app_file == $0

end
