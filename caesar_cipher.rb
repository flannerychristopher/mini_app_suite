require 'sinatra'
require 'sinatra/reloader' if development?

enable :sessions

def caesar_cypher(string, shift)
  # declare arrays and string for steps through ciphering
  ascii_arr = []
  shifted_num = []
  @new_text = ""
  #session[:new_text] = @new_text

  letters_arr = string.scan(/./)

  letters_arr.each do |letter|
    ascii_arr.push(letter.ord)
  end

  ascii_arr.each do |num|
    if num.between?(65,90)
      num += shift
      if num > 90
        num -= 26
      end
      shifted_num.push(num)
    elsif num.between?(97,122)
      num += shift
      if num > 122
        num -= 26
      end
      shifted_num.push(num)
    else
      shifted_num.push(num)
    end
    shifted_num
  end

  shifted_num.each do |num|
    @new_text += num.chr
  end
  @new_text

end
