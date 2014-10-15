# app.rb
require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:blog.db"

class Post < ActiveRecord::Base

end

get "/posts" do
  @posts = Post.order("created_at DESC")
  erb :"posts/index"

end


get '/' do
  erb :racine
end

# 404 Error!
not_found do
  status 404
  erb :racine
end


get '/index' do
  #"Hello #{params[:prenom]} !"
  erb :index
end

get '/tuto' do
  #"page 0102"
  erb :tuto
end


get '/tuto/page0102' do
  #"page 0102"
  erb :page0102
end

get '/tuto/page0103' do
  #"page 0102"
  erb :page0103
end

get '/tuto/page0104' do
  #"page 0102"
  erb :page0104
end

get '/ruby' do
  erb :ruby
end