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

end
