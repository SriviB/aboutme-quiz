require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  post "/results" do
    puts params
    points_array = params.values
    total = 0
    points_array.each do |point|
      total += point.to_i
    end
    puts total
    
    result = calc_res(total)
    puts result
    if result == "Besties!"
      return erb :besties
    elsif result == "Friends!"
      return erb :friends
    elsif result == "We're okay..."
      return erb :okay
    elsif result == "Meh..."
      return erb :meh
    elsif result == "We're not friends."
      return erb :notfriends
    elsif result == "I don't even know you!"
      return erb :dontknowyou
    end
end
end