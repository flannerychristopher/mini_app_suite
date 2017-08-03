require 'sinatra'
require "./caesar_cipher"
require "./hangman"
require "./tictactoe"
require "./numberguess"

get '/' do
  erb :index
end

# javascript apps

get "/pomodoro" do
  erb :pomodoro_index
end

get "/etchasketch" do
  erb :etchasketch_index
end

get "/mrgreek" do
  erb :mrgreek_index
end
