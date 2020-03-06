require 'sinatra'

class Battle < Sinatra::Base
  
  enable :sessions

  get '/test' do
    'Testing infrastructure working!'
  end
  
  get '/' do
    erb :index
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    session[:player_1] = @player_1_name
    session[:player_2] = @player_2_name
    # erb :play
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1]
    @player_2_name = session[:player_2]
    erb :play
  end


  run! if app_file == $0
end