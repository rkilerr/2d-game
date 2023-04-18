require_relative "./base_character.rb"

class Player < BaseCharcter
  attr_reader :speed
  def initialize(game, sprite, speed = 2)
    super(game: game, sprite: sprite, width: 78, height: 99, x: 0, y: 0)
    reset!
    @speed = speed
  end

  def reset!
    @x = 0
    @y = 0
    @speed = 0
  end

  def move_right
    self.x += @speed
    @sprite.play animation: :walk
  end

  def move_left
    self.x -= @speed
    @sprite.play animation: :walk, flip: :horizontal
  end

  def move_up
    self.y -= @speed
    @sprite.play animation: :climb
  end

  def move_down
    self.y += @speed
    @sprite.play animation: :climb, flip: :vertical
  end

  def cheer
    @sprite.play animation: :cheer
  end
end
