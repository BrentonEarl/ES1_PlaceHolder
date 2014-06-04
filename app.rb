require 'sinatra'

class Application < Sinatra::Base
  
  not_found do
    erb :'404'
  end
  
  error do
    'Oh no, you ran into an error - ' + env['sinatra.error'].name
  end
  
  get '/' do
    erb :index
  end
  
end