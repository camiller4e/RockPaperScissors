require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/RPS')
also_reload('models/*')

get '/RPS/:hand1/:hand2'
