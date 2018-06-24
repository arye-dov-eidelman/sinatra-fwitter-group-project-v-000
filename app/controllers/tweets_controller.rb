class TweetsController < ApplicationController

get '/tweets' do
  @tweets = Tweet.all
  @user = User.find(sessions[:user_id])
  erb :'/tweets/show'
end

get '/tweets/new' do
  erb :'/tweets/new'
end

end
