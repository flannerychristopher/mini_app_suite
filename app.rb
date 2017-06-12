require 'sinatra'
#require 'sinatra/reloader' if development?
require_relative 'hangman'
require_relative 'caesar_cipher'
require_relative 'tictactoe'
require_relative 'numberguess'

get '/' do
  erb :index
end

#hangman

get "/hangman" do
  intro_session
  erb :hangman_index
end

post "/hangman_guess" do
  check_guess
  game_over?
  update_session
  erb :hangman_index
end

post '/cheat' do
  @message = ["cheater!", "we're not all strong people.", "it's okay to feel bad about yourself", "all is fair in love and hangman", "oook what's the point of playing now?"].sample
  @cheat = true
  session[:cheat] = @cheat
  update_session
  erb :hangman_index
end

post '/word_input' do
  update_session

  if params["word_input"] == params["word_input"][/[a-zA-Z]{4,13}/]
    get_word_input
    new_game
    update_session
  else
    @message = "please choose a word 4 to 12 letters long and no numbers, punctuation, or symbols."
    @intro = true
  end

  erb :hangman_index
end

post '/choose_word' do
  session[:intro] = true
  intro_session
  @message = "type a word to play with your friend (close your eyes, friend)"
  erb :hangman_index
end

post '/random_word' do
  get_word_random
  new_game
  update_session
  erb :hangman_index
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

#tictactoe

get '/tictactoe' do
    start_session
  erb :tictactoe_index
end

post '/box1' do
  update
  move
  check_win
  erb :tictactoe_index
end

post '/box2' do
  update
  move
  check_win
  erb :tictactoe_index
end

post '/box3' do
  update
  move
  check_win
  erb :tictactoe_index
end

post '/box4' do
  update
  move
  check_win
  erb :tictactoe_index
end

post '/box5' do
  update
  move
  check_win
  erb :tictactoe_index
end

post '/box6' do
  update
  move
  check_win
  erb :tictactoe_index
end

post '/box7' do
  update
  move
  check_win
  erb :tictactoe_index
end

post '/box8' do
  update
  move
  check_win
  erb :tictactoe_index
end

post '/box9' do
  update
  move
  check_win
  erb :tictactoe_index
end

# number guess
