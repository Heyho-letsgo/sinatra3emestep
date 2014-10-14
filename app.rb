# app.rb
require 'sinatra'
require 'shotgun'

class HelloWorldApp < Sinatra::Base
    get '/:name/' do
  "Hello #{params[:name]} !"

    end
end
