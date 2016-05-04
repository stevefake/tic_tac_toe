require 'minitest/autorun'
require_relative 'application'
require_relative 'cell'

def test_board
  skip
  assert_equal "", create_board
end

def test_can_input_move
  cell = Cell.new('x')
  assert_equal 'X', cell.entry
end
