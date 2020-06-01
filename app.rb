require_relative 'config/environment'

class App < Sinatra::Base

    configure do 
        enable :sessions 
        set :secret_session, "secret"
    end 

    get '/' do 
        erb :index 
    end 

    post '/checkout' do 
        @session = session 
        session[:item] = params[:item]
        erb :show
    end 
end