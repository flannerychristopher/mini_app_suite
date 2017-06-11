require 'sinatra'
require 'sinatra/reloader' if development?

get '/numberguess' do
  start_game
  erb :numberguess_index
end

post '/guess_a_number' do
  update_guess
  erb :numberguess_index
end

helpers do

  def start_game

    @number_to_guess = rand(100) + 1
    session[:number_to_guess] = @number_to_guess
    @guess_limit = 5
    session[:guess_limit] = @guess_limit

    @number_background = "#e0e0e0"
    @number_message ||= "Try to guess the secret number between 1 and 100!"
  end

  def update_guess
    @number_to_guess = session[:number_to_guess]
    session[:guess_limit] -= 1
    @guess_limit = session[:guess_limit]
    guess = params['number_guess']
    dif = guess.to_i - @number_to_guess

    @number_message = check_number_guess(dif)
    @number_background = change_color(dif)
    check_guess_limit
  end

  def check_guess_limit
    if @guess_limit == 0
      @number_message = "Sorry, you lost. Here's a new number"
      start_game
    end
  end

  def check_number_guess(dif)
    if dif.between?(1,5)
      @number_message = "a little too high."
    elsif dif.between?(-5,-1)
      @number_message = "a little too low."
    elsif dif >= 6
      @number_message = "way too high!"
    elsif dif <= -6
      @number_message = "way too low!"
    else
      @number_message = "Correct! The secret number is #{@number_to_guess}. Guess the new number:"
      start_game
    end
  end

  def change_color(dif)
    case dif
    when 1..5, -5..-1 then 'rgba(50, 50, 255, 0.3)'
    when 6..1000, -1000..-6 then 'rgba(255, 50, 50, 0.3)'
    else '#33cc33'
  	end
  end

end
