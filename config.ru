require 'sinatra'

class App < Sinatra::Base

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/potato' do
    "<p>Boil 'em, mash 'em, stick 'em in a stew</p>"
  end

  get '/dice' do 
    dice_roll = rand(1..6)
    { roll: dice_roll }.to_json
  end
  
  get '/add/:num/:num2' do 
    num1 = params[:num1].to_i
    num1 = params[:num2].to_i

   sum = num1 + num2
    { results: sum }.to_json
  end

end

run App
