require "ruby2d"
require_relative "./game.rb"
require_relative "./player.rb"

game = Game.new(difficulty: :easy)
sprite_hero =
  Sprite.new(
    "hero.png",
    width: 78,
    height: 99,
    clip_width: 78,
    time: 250,
    animations: {
      idle: 0,
      walk: 1..2,
      climb: 3..4,
      cheer: 5..6
    }
  )
player = Player.new(game, sprite_hero)

on :key_held do |event|
  case event.key
  when "a"
    player.move_left
  when "d"
    player.move_right
  when "w"
    player.move_up
  when "s"
    player.move_down
  when "c"
    player.cheer
  end
end

update do
  sprite_hero.x = player.x
  sprite_hero.y = player.y
end

show
