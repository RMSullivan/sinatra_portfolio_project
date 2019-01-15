require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ':secret'

  end

  get "/" do
    @autos = Auto.all
    erb :index
  end

  post "/" do
  end

  get "/join" do
    erb :join
  end

  post "/join" do
  end

  get "/new" do
    erb :new
  end

  post "/new" do
  end

  get '/test' do
    template = "The current year is <%= Time.now.year %>."
  erb template
  end

end
