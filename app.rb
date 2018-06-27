require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
  pig = Piglatinizer.new
  @words = pig.piglatinize(params[:user_type])

  erb :results
  end

end
