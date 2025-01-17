require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    (number * number).to_s
  end

  get '/say/:number/:phrase' do
    number = params[:number]
    phrase = params[:phrase]
    (phrase + "\n") * number.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " +
    params[:word2] + " " +
    params[:word3] + " " +
    params[:word4] + " " +
    params[:word5] +  "."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1 = params[:number1]
    num2 = params[:number2]
    if op == "add"
      (num1.to_i + num2.to_i).to_s
    elsif op == "subtract"
      (num1.to_i - num2.to_i).to_s
    elsif op == "multiply"
      (num1.to_i * num2.to_i).to_s
    elsif op == "divide"
      (num1.to_i / num2.to_i).to_s
    else
      "GO AWAY"
    end
  end


end