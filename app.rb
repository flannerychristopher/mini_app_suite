require 'sinatra'
require_relative 'hangman'
require_relative 'caesar_cipher'
require_relative 'tictactoe'
require_relative 'numberguess'

enable :sessions

get '/' do
  erb :index
end

#caesar_cipher
get "/caesar_cipher" do
  erb :caesar_cipher_index
end

post '/caesar_cipher' do
  #@new_text = ""
  string = params['string']
  shift = params['shift'].to_i
  if string != nil && shift != nil
    session[:new_text] = caesar_cypher(string, shift)
    @new_text = session[:new_text]
  end
  erb :caesar_cipher_index
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
