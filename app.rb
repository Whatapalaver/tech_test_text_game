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
    @pageid = params[:pageid]
    @option_number = params[:formNum].to_i
    @option_index = @option_number - 1
    @current_page = @story.pages[@pageid.to_i]
    ## create new option based on input submitted
    @option = Option.new(params[:option])
    ## store option in current page object
    @current_page.options[@option_index] = @option
    ## create a new page object based on option created and update story object
    @new_page = @option.page_link
    @story.pages.push(@new_page)
    redirect "/pages/#{@pageid}"
  end

end
