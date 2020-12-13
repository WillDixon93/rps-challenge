require 'sinatra/base'
require_relative './lib/rpsgame'

class RPS < Sinatra::Base

  get '/' do
    "Testing infrastructure working"
  end

  get '/name' do
    erb :name
  end

  post '/play' do
    $name = params[:name]
    erb :play
  end

  post '/winning_outcome' do
    erb :winning_outcome
  end
end