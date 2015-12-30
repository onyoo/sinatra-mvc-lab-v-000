require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post "/piglatinize" do
    @translation = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    erb :index
  end

end