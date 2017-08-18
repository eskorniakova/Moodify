require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  

  post '/results' do
     @music = get_match(params[:group1], params[:group2])
     @mood = params[:group1]
     @activity = params[:group2]
     
     erb :results
  end
  
  get '/about' do 
    erb :about
  end
end
