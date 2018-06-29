require './config/environment'
require './app/models/sample_model'
require './app/models/name_generator'
#require 'httparty'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    return erb :index
  end
  
  get '/play' do
    return erb :game
  end
  
  post '/results' do
    puts params.to_s
    #Create a player class?
    player1 = params["player1"]
    @player1 = rename(player1)
    player2 = params["player2"]
    @player2 = rename(player2)
    player3 = params["player3"]
    @player3 = rename(player3)
    return erb :game
  end
  
  get '/end' do
    return erb :results
  end
  
  
  
end

