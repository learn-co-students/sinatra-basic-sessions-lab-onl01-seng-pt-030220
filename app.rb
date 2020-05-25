require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  get '/hey' do
  session["name"] = "Victoria"
  @session = session
  end

  post '/checkout' do
    
    session["item"] = params[:item]
    @session = session
    @item = params[:item]
  end

end
