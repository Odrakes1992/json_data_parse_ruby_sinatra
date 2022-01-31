require 'sinatra'
require 'sinatra/reloader' 
require 'sinatra/base'

class DataParser < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end 
  enable :sessions


get '/' do 
  # "Hello world"
  erb(:index)
end

post '/conversion' do 
  session[:json_data] = params[:json_data]
  session[:location] = params[:location]
  redirect '/result'
end

get '/result' do
  @json_data = session[:json_data]
  @location = session[:location]
  erb(:result)
end

run! if app_file == $0

end