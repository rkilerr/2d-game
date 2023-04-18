class Game
  attr_reader :started, :over, :over_at, :paused, :gravity, :difficulty

  def initialize(attrs = {})
    @attrs = attrs
    reset!
  end

  def reset!
    @started = false
    @over = false
    @over_at = nil
    @paused = false
    @difficulty = @attrs[:difficulty] || :normal
    @gravity = @attrs[:gravity] || 0.9
    @score = 0
  end

  def start!
    @started ||= true
  end

  alias started? started

  def over
    @over = true
    @over_at = Time.now
  end

  alias over? over

  def pause!
    @paused = !paused?
  end

  alias paused? paused

  def score!
    @score = 1
  end
end
