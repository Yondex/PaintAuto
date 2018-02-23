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
    @user_name = params[:user_name]
    @phone = params[:phone]
    @auto = params[:auto]
    @data = params[:data]
    @color = params[:color]

    if @color=="#7bd148"
        @color='Green'
    elsif @color=="#5484ed"
          @color = 'Bold blue'
    elsif @color=="#5484ed"
          @color = 'Bold blue'
    elsif @color=="a4bdfc"
          @color = 'Blue'
    elsif @color=="#46d6db"
          @color = 'Turquoise'
    elsif @color=="#7ae7bf"
          @color = 'Light green'
    elsif @color=="#51b749"
          @color = 'Bold green'
    elsif @color=="#fbd75b"
          @color = 'Yellow'
    elsif @color=="#ffb878"
          @color = 'Orange'
    elsif @color=="#ff887c"
          @color = 'Red'
    elsif @color=="#dc2127"
          @color = 'Bold red'
    elsif @color=="#dbadff"
          @color = 'Purple'
    elsif @color=="#e1e1e1"
          @color = 'Gray'
    end

    client = Client.new # Сохранение в БД
      client.name = @user_name
      client.phone = @phone
      client.datestamp = @data
      client.color = @color
      client.auto = @auto

    client.save

    redirect to '/visit'
end
