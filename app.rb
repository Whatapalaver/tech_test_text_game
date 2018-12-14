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

  post '/pages/:pageid/option_1' do
    @pageid = params[:pageid]
    @current_page = @story.pages[@pageid.to_i]
    ## create new option based on input submitted
    @option_1 = Option.new(params[:option_1])
    ## store option in current page object
    @current_page.options[0] = @option_1
    ## create a new page object based on option created and update story object
    @new_page = @option_1.page_link
    @story.pages.push(@new_page)
    redirect "/pages/#{@pageid}"
  end

  post '/pages/:pageid/option_2' do
    @pageid = params[:pageid]
    @current_page = @story.pages[@pageid.to_i]
    ## create new option based on input submitted
    @option_2 = Option.new(params[:option_2])
    ## store option in current page object
    @current_page.options[1] = @option_2
    ## create a new page object based on option created and update story object
    @new_page = @option_2.page_link
    @story.pages.push(@new_page)
    redirect "/pages/#{@pageid}"
  end

  post '/pages/:pageid/option_3' do
    @pageid = params[:pageid]
    @current_page = @story.pages[@pageid.to_i]
    ## create new option based on input submitted
    @option_3 = Option.new(params[:option_3])
    ## store option in current page object
    @current_page.options[2] = @option_3
    ## create a new page object based on option created and update story object
    @new_page = @option_3.page_link
    @story.pages.push(@new_page)
    redirect "/pages/#{@pageid}"
  end

  post '/pages/:pageid/option_4' do
    @pageid = params[:pageid]
    @current_page = @story.pages[@pageid.to_i]
    ## create new option based on input submitted
    @option_4 = Option.new(params[:option_4])
    ## store option in current page object
    @current_page.options[3] = @option_4
    ## create a new page object based on option created and update story object
    @new_page = @option_4.page_link
    @story.pages.push(@new_page)
    redirect "/pages/#{@pageid}"
  end

end
