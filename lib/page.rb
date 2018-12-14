require './lib/option'

class Page

  attr_accessor :options, :chapter, :option1, :option2, :option3, :option4

  def initialize(chapter)
    @options = Array.new(4)
    @chapter = chapter
  end

  def option_1
    @option_1 = @options[0]
  end

  def option_2
    @option_2 = @options[1]
  end

  def option_3
    @option_3 = @options[2]
  end

  def option_4
    @option_4 = @options[3]
  end
end
