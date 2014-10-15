# app.rb
require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:blog.db"

class Post < ActiveRecord::Base

end

get "/posts" do
  @title = "Liste des Posts"
  @posts = Post.order("created_at DESC")
  erb :"posts/index"
end

get "/posts/new" do
  @title = "Nouveau post"
  @post = Post.new
  erb :"posts/new"
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


helpers do
  # If @title is assigned, add it to the page's title.
  def title
    if @title
      "#{@title} -- My Blog"
    else
      "My Blog"
    end
  end

  # Format the Ruby Time object returned from a post's created_at method
  # into a string that looks like this: 06 Jan 2012
  def pretty_date(time)
    time.strftime("%d %b %Y")
  end

end


