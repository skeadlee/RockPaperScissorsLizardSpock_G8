require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/game')
also_reload('models/*')

post '/' do
  @winner = Game.result(params[:player1], params[:player2])
  erb( :result )
end

get '/' do
  erb( :home )
end

get '/rules' do
  erb( :rules )
end
