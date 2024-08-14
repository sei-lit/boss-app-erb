require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

get '/' do
  erb :index
end

# ここにコードを書こう
get "/result" do
    price = params[:price].to_i
    count = params[:count].to_i
    
    @result = price / count
    erb :result
end