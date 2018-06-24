class TweetsController < ApplicationController

get '/tweets' do
  binding.pry
  if !session[:user_id]
    redirect to '/login'
  else
    @tweets = Tweet.all
    @user = User.find(session[:user_id])
    erb :'/tweets/show'
  end
end

get '/tweets/new' do
  erb :'/tweets/new'
end

end
