#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:PaintAuto.db"

class Client < ActiveRecord::Base
      validates :name, presence: true, length: { minimum: 4, maximum: 20 }
      validates :phone, presence: true
      validates :datestamp, presence: true
      validates :auto, presence: true, length: { minimum: 2, maximum: 20 }
      validates :color, presence: true
end

class Painter < ActiveRecord::Base

end

before do
    @painter = Painter.all
end

get '/' do
 erb :index
end

get '/visit' do
  erb :visit
end

post '/visit' do
 c = Client.new params[:client]
  if c.save
    erb "<h2> Спасибо, Вы записались!</h2> "
  else
  @error = c.errors.full_messages.first
  erb :visit
  end
end
get '/painter/:id' do
  @painter = Painter.find(params[:id])
  erb :painter
end
get '/bookings' do
  @clients = Client.order('created_at DESC')
  erb :bookings
end

get '/contacts' do
  erb :contacts
end
get '/about' do
  erb :about
end
get '/client/:id' do
  @client = Client.find(params[:id])
end
