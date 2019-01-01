require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    @autos = Auto.all
    erb :index
  end

  get "/join" do
    erb :join
  end

  get '/test' do
    template = "The current year is <%= Time.now.year %>."
  erb template
  end

end
