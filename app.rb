#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:PaintAuto.db"

class Client < ActiveRecord::Base

end

class Painter < ActiveRecord::Base

end

get '/' do
 erb :index
end
