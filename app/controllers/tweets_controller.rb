class TweetsController < ApplicationController

get '/tweets' do
  @tweets = Tweet.all
  binding.pry
  @user = User.find(session[:user_id])
  erb :'/tweets/show'
end

get '/tweets/new' do
  erb :'/tweets/new'
end

end
