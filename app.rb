require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "happypride884815b4bcfeca12c8fee512c02111825b82ebae06dc9bc4a3a8b7219d401a807e0184172d2fe135d251b5503c08220f907abf290d9604deaa011e3d687e3c5c"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session["item"] = params[:item]
    @session = session
    erb :checkout
  end

end
