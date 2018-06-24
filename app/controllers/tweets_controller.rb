class TweetsController < ApplicationController

get '/tweets' do
  @tweets = Tweet.all
  erb :'/tweets/tweets'
end

get '/tweets/new' do
  erb :'/tweets/new'
end

end
