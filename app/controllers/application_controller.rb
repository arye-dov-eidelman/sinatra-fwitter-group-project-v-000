require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
  end

  get '/' do
    erb :'/users/homepage'
  end

  get '/signup' do
    erb :'/users/signup'
  end

  post '/signup' do
    if params[:username].empty? || params[:email].empty? || params[:password].empty?
      redirect to :'/signup'
    end
      @user = User.create(params)
      @user.id = session[:user_id]
    redirect to :'/tweets'
  end


end
