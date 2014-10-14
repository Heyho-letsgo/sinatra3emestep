# app.rb
require 'sinatra'
require 'shotgun'


get '/' do
    "Hello World!"
  #erb :racine
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
