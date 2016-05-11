require 'minitest/autorun'
require 'minitest/pride'
require_relative '../application'
require_relative '../player'
require_relative '../board'

class ApplicationTest < Minitest::Test

  def test_verify_move
    skip
    move = player.player_turn
    if @board_obj.move_unique?(move)
    @board_obj.move_valid?(move) == false
    assert_equal 'Not a valid location. Try again.', verify_move(player)
    assert_equal 'There is already a piece at that location. Try again.', verify_move(player)
  end

  def test_game_ends_when_draw
    skip
    game_is_draw?
  end

  def test_game_ends_when_winner
    skip
    winner?
  end
end
