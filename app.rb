require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    # session[:player_one] = params[:player_one]
    # session[:player_two] = params[:player_two]
    session[:attack_history] = nil
    redirect "/play"
  end

  post '/attack' do
    session[:attack_history] = 'attack'
    redirect '/play'
  end

  get '/play' do
    @player_one = $player_one.name
    # @player_one = session[:player_one]
    @player_one_points = 60
    @player_two = $player_two.name
    # @player_two = session[:player_two]
    @player_two_points = 60
    @attack_history = session[:attack_history]
    erb(:play)
  end

  run! if app_file == $0
end
