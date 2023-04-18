require "forwardable"

class BaseCharcter
  attr_reader :game
  attr_accessor :x, :y, :height, :width

  def initialize(**args)
    @x = args[:x]
    @y = args[:y]
    @height = args[:height]
    @width = args[:width]
    @game = args[:game]
    @sprite = args[:sprite]
  end
end
