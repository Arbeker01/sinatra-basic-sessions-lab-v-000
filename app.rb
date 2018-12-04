require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, 'secret'
  end
  
  get '/' do
    @session = session
    
    erb :index
  end
  
  get '/hey' do
    session["name"] = "Victoria"
  @session = session
end 

end