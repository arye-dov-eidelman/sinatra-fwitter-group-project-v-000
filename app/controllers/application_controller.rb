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
    if session[:user_id]
      redirect :'/tweets'
    end
    erb :'/users/signup'
  end

  post '/signup' do
    if params[:username].empty? || params[:email].empty? || params[:password].empty?
      redirect to :'/signup'
    end
      @user = User.create(params)
      session[:user_id] = @user.id
    redirect to :'/tweets'
  end

  get '/login' do
    if session[:user_id]
      redirect :'/tweets'
    end
    erb :'/users/login'
  end

  post '/login' do
     @user = User.create(params[:id])
     
  end 

end
