require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "secret"
      end

    get '/' do 
        erb :index
    end 

    get '/set' do
        session[:foo] = 'hello'
    if session[:foo] == 'hello'
      redirect '/fetch'
    else
      "Session value has not been set!"
    end
    end 

    get '/fetch' do 
        "You did it! session[:foo] value: #{session[:foo]}.\nMove on to Part II of this lab at '/second_exercise' "
    end 

    post '/checkout' do
        session[:item] = params[:item]
        @session = session
    end 

end