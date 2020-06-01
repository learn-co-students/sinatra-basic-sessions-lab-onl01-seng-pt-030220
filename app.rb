require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

    configure do 
    enable :sessions 
    set :sessions_select, "secrets" 
    end

    get '/' do 
    erb :index
    end

    post '/checkout' do 
    @item = params[:item]
    @session = session
    @session[:item] = params[:item]
    end

end