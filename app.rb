require 'sinatra/base'
require_relative './lib/game'

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

  post '/outcome' do
    "Hello World"
  end
end