require 'sinatra'

get '/' do
  erb :home
end

post '/send' do
  "Obrigado por se cadastrar!"
end