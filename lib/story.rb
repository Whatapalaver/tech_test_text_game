require './lib/page'

class Story

  attr_accessor :initial_page, :pages

  def self.create(opener)
    @game = Story.new(opener)
  end

  def self.instance
    @game
  end

  def initialize(opener)
    @initial_page = Page.new(opener)
    @pages = [@initial_page]
  end

  def pageid(page)
    @pageid = @pages.index(page)
  end

  def option_submit(page_id, option_number, option_text)
    @option_index = option_number - 1
    @current_page = @pages[page_id]
    ## create new option based on input submitted
    @option = Option.new(option_text)
    ## store option in current page object
    @current_page.options[@option_index] = @option
    ## create a new page object based on option created and update story object
    @new_page = @option.page_link
    @pages.push(@new_page)
  end

end
