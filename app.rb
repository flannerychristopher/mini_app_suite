class AppSuite
  set :session_secret, "328479283uf923fu8932fu923uf9832f23f232"
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

#numberguess
  get '/numberguess' do
    start_game
    erb :numberguess_index
  end

  post '/guess_a_number' do
    update_guess
    erb :numberguess_index
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

end
