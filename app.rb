# app.rb
require 'sinatra'
require 'shotgun'


get '/' do
  erb :racine
end

get '/:prenom' do
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




get '/hello/:nom' do |n|
  "Hello #{n}! ""Page d'accueil"
end


get '/say/*/to/*' do
  # matches /say/hello/to/world
  params[:splat].inspect # => ["hello", "world"]
end


get '/download/*.*' do
  # matches /download/path/to/file.xml
  params[:splat] # => ["path/to/file", "xml"]
end