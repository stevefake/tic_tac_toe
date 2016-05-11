require 'minitest/autorun'
require 'minitest/pride'
require_relative '../player'
require 'pry'

class PlayerTest < Minitest::Test

  def test_player_class_exists
    assert Player
  end

  def test_can_create_player
    player = Player.new
    player.name('Bob')
    player.xo('X')
    assert_equal 'Bob', player.name
    assert_equal 'X', player.xo
  end

end
