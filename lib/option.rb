require './lib/page'

class Option

  attr_accessor :text, :page_link

  def initialize(text)
    @text = text
    @page_link = Page.new(text)
  end


end
