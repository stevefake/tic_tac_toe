require_relative 'board'

class BoardRender
  attr_accessor :display_board

  def display_board(board = nil)
    board ||= @board # reevaluation use of memoization here
    system('clear')
    p row_1 = "#{board['A1']} | #{board['A2']} | #{board['A3']}"
    p row_div = "---------"
    p row_1 = "#{board['B1']} | #{board['B2']} | #{board['B3']}"
    p row_div = "---------"
    p row_1 = "#{board['C1']} | #{board['C2']} | #{board['C3']}"
  end
end
