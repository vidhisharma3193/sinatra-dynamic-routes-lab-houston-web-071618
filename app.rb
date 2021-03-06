require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
  @r_name = params[:name].reverse
  "Reverse name : #{@r_name}"
end

get '/square/:number' do
  @n = params[:number].to_i
  @square = @n * @n

  "Number is #{@n} & Square of number is #{@square}"
end

get '/say/:number/:phrase' do
  @n = params[:number].to_i
  @phrase = params[:phrase]
  return_phrase = ""
  @n.times do
   return_phrase += "#{@phrase}  "
  end
  return_phrase
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  @w1 = params[:word1]
  @w2 = params[:word2]
  @w3 = params[:word3]
  @w4 = params[:word4]
  @w5 = params[:word5]

   "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}"
end

get '/:operation/:number1/:number2' do
  @operation = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
  case @operation
when 'add'
  @answer = @n1 + @n2

when 'subtract'
  @answer = @n1 - @n2

when 'multiply'
  @answer = @n1 * @n2

when 'divide'
  @answer = @n1 / @n2
end

"Answer is #{@answer}"
end

end
