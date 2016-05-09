require 'minitest/autorun'
require 'minitest/pride'
require_relative '../board'
require_relative '../player'
require_relative '../application'
require 'pry'

class BoardTest < Minitest::Test

  def test_board_class_exists
    assert Board
  end

  def test_can_create_board
    h = {'A1' => " ", "A2"=>" ", "A3"=>" ", "B1"=>" ", "B2"=>" ", "B3"=>" ", "C1"=>" ", "C2"=>" ", "C3"=>" "}
    board = Board.create
    assert_equal h, board.board
  end

  def test_can_send_move_to_board
    board = Board.create
    response = 'A2'
    assert_equal 'X', board.send_move(response, 'X')
  end

  def test_board_state_can_track_if_moves_available
    board = Board.create
    board.send_move('A1', 'X')
    board.send_move('A2', 'X')
    board.send_move('A3', 'X')
    board.send_move('B1', 'X')
    board.send_move('B2', 'X')
    board.send_move('B3', 'X')
    board.send_move('C1', 'X')
    board.send_move('C2', 'X')
    board.send_move('C3', 'X')

    assert_equal false, board.moves_available?
  end

  def test_can_track_if_player_wins
    h = {'A1' => "X", "A2"=>"X", "A3"=>"X", "B1"=>" ", "B2"=>" ", "B3"=>" ", "C1"=>" ", "C2"=>" ", "C3"=>" "}
    board = Board.create(h)
    player_x = 'Bob'
    assert_equal true, board.player_wins?
  end
end
