require 'sinatra/base'
require './lib/story'

class MyRackApp < Sinatra::Base
  set :root, File.dirname(__FILE__)
  enable :sessions

  before do
    @story = Story.instance
    puts '[Params]'
    p params
  end
  
  get '/' do
    # session[:story] = Story.create('The fox was sleeping fitfully')
    @story = Story.create('The fox was sleeping fitfully')
    redirect '/pages/0'
  end

  get '/pages/:pageid' do
    # @story = session[:story]
    @pageid = params[:pageid]
    p @pageid
    @page = @story.pages[@pageid.to_i]
    erb :page
  end

  post '/pages/:pageid/:formNum' do
    @page_id = params[:pageid].to_i
    @option_number = params[:formNum].to_i
    @option_text = params[:option]
    @story.option_submit(@page_id, @option_number, @option_text)
    redirect "/pages/#{@page_id}"
  end

end
