require 'minitest/autorun'
require 'minitest/pride'
# require_relative 'application'
require_relative 'tic_tac_toe'
require_relative 'board'

class TicTacToeTest < Minitest::Test
  def board
    ::Board.new
  end

  def tic_tac_toe
    ::TicTacToe.new
  end

  def test_board
    assert_equal '', Board.new.create_board
  end

  def test_board_class_exists
    assert Board
  end

  def test_player_can_make_move
    player_move = 'A1'
    assert_equal player_move, tic_tac_toe.gameplay.response['A1']
  end
end
