require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/RPS')
also_reload('models/*')

get '/RPS/:hand1/:hand2' do
  rockpaperscissors = RockPaperScissors.new(params[:hand1], params[:hand2])
  @rockpaperscissors = rockpaperscissors.game()
  erb( :result )
end

get '/' do
  erb( :home )
end

get '/THE GAME' do
  erb( :game )
end

get '/RPS/rock' do
  erb( :rock )
end

get '/RPS/paper' do
  erb( :paper )
end

get '/RPS/scissors' do
  erb( :scissors )
end
