require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    session[:attack_history] = nil
    redirect "/play"
  end

  post '/attack' do
    session[:attack_history] = 'attack'
    redirect '/play'
  end

  get '/play' do
    @player_one = session[:player_one]
    @player_one_points = 0
    @player_two = session[:player_two]
    @player_two_points = 0
    @attack_history = session[:attack_history]
    erb(:play)
  end

  run! if app_file == $0
end
