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

  post '/pages/:pageid/option1' do
    @pageid = params[:pageid]
    p @pageid
    @page = @story.pages[@pageid.to_i]
    @option1 = Option.new(params[:option1])
    @page.option1 = @option1
    redirect '/pages/@pageid'
  end

  post '/pages/:pageid/option2' do
    @pageid = params[:pageid]
    p @pageid
    @page = @story.pages[@pageid.to_i]
    @option2 = Option.new(params[:option2])
    @page.option2 = @option2
    redirect '/pages/@pageid'
  end

  post '/pages/:pageid/option3' do
    @pageid = params[:pageid]
    p @pageid
    @page = @story.pages[@pageid.to_i]
    @option3 = Option.new(params[:option3])
    @page.option3 = @option3
    redirect '/pages/@pageid'
  end

  post '/pages/:pageid/option4' do
    @pageid = params[:pageid]
    p @pageid
    @page = @story.pages[@pageid.to_i]
    @option4 = Option.new(params[:option4])
    @page.option4 = @option4
    redirect '/pages/@pageid'
  end

  # post '/bookmarks' do
  #   if Bookmark.create(params)
  #     flash[:success] = "Successfully added bookmark"
  #   else
  #     flash[:error] = "Please enter a valid URL"
  #   end
  #   redirect '/bookmarks'
  # end

  # post '/bookmarks/:id/delete' do
  #   Bookmark.delete(params['id'])
  #   redirect '/bookmarks'
  # end

end
