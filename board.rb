class Board
  attr_reader :board
  VALID_RESPONSES = %w(A1 A2 A3 B1 B2 B3 C1 C2 C3).freeze

  def initialize(input = board)
    @board = input || {
      'A1' => ' ', 'A2' => ' ', 'A3' => ' ',
      'B1' => ' ', 'B2' => ' ', 'B3' => ' ',
      'C1' => ' ', 'C2' => ' ', 'C3' => ' '
    }
  end

  def moves_available?
    @board.values.include?(' ')
  end

  def move_valid?(response)
    VALID_RESPONSES.include?(response)
  end

  def move_unique?(response)
    @board[response] == ' '
  end

  def send_move(response, xo)
    @board[response] = xo
  end

  # Winning configurations
  X1 =
    { 'A1' => 'X', 'A2' => 'X', 'A3' => 'X',
      'B1' => ' ', 'B2' => ' ', 'B3' => ' ',
      'C1' => ' ', 'C2' => ' ', 'C3' => ' ' }.freeze
  X2 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => ' ',
      'B1' => 'X', 'B2' => 'X', 'B3' => 'X',
      'C1' => ' ', 'C2' => ' ', 'C3' => ' ' }.freeze
  X3 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => ' ',
      'B1' => ' ', 'B2' => ' ', 'B3' => ' ',
      'C1' => 'X', 'C2' => 'X', 'C3' => 'X' }.freeze
  X4 =
    { 'A1' => 'X', 'A2' => ' ', 'A3' => ' ',
      'B1' => 'X', 'B2' => ' ', 'B3' => ' ',
      'C1' => 'X', 'C2' => ' ', 'C3' => ' ' }.freeze
  X5 =
    { 'A1' => ' ', 'A2' => 'X', 'A3' => ' ',
      'B1' => ' ', 'B2' => 'X', 'B3' => ' ',
      'C1' => ' ', 'C2' => 'X', 'C3' => ' ' }.freeze
  X6 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => 'X',
      'B1' => ' ', 'B2' => ' ', 'B3' => 'X',
      'C1' => ' ', 'C2' => ' ', 'C3' => 'X' }.freeze
  X7 =
    { 'A1' => 'X', 'A2' => ' ', 'A3' => ' ',
      'B1' => ' ', 'B2' => 'X', 'B3' => ' ',
      'C1' => ' ', 'C2' => ' ', 'C3' => 'X' }.freeze
  X8 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => 'X',
      'B1' => ' ', 'B2' => 'X', 'B3' => ' ',
      'C1' => 'X', 'C2' => ' ', 'C3' => ' ' }.freeze

  O1 =
    { 'A1' => 'O', 'A2' => 'O', 'A3' => 'O',
      'B1' => ' ', 'B2' => ' ', 'B3' => ' ',
      'C1' => ' ', 'C2' => ' ', 'C3' => ' ' }.freeze
  O2 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => ' ',
      'B1' => 'O', 'B2' => 'O', 'B3' => 'O',
      'C1' => ' ', 'C2' => ' ', 'C3' => ' ' }.freeze
  O3 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => ' ',
      'B1' => ' ', 'B2' => ' ', 'B3' => ' ',
      'C1' => 'O', 'C2' => 'O', 'C3' => 'O' }.freeze
  O4 =
    { 'A1' => 'O', 'A2' => ' ', 'A3' => ' ',
      'B1' => 'O', 'B2' => ' ', 'B3' => ' ',
      'C1' => 'O', 'C2' => ' ', 'C3' => ' ' }.freeze
  O5 =
    { 'A1' => ' ', 'A2' => 'O', 'A3' => ' ',
      'B1' => ' ', 'B2' => 'O', 'B3' => ' ',
      'C1' => ' ', 'C2' => 'O', 'C3' => ' ' }.freeze
  O6 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => 'O',
      'B1' => ' ', 'B2' => ' ', 'B3' => 'O',
      'C1' => ' ', 'C2' => ' ', 'C3' => 'O' }.freeze
  O7 =
    { 'A1' => 'O', 'A2' => ' ', 'A3' => ' ',
      'B1' => ' ', 'B2' => 'O', 'B3' => ' ',
      'C1' => ' ', 'C2' => ' ', 'C3' => 'O' }.freeze
  O8 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => 'O',
      'B1' => ' ', 'B2' => 'O', 'B3' => ' ',
      'C1' => 'O', 'C2' => ' ', 'C3' => ' ' }.freeze

  def player_wins?
    if (@board['A1'] == X1['A1']) && (@board['A2'] == X1['A2']) && (@board['A3'] == X1['A3'])
      return true
    elsif (@board['B1'] == X2['B1']) && (@board['B2'] == X2['B2']) && (@board['B3'] == X2['B3'])
      return true
    elsif (@board['C1'] == X3['C1']) && (@board['C2'] == X3['C2']) && (@board['C3'] == X3['C3'])
      return true
    elsif (@board['A1'] == X4['A1']) && (@board['B1'] == X4['B1']) && (@board['C1'] == X4['C1'])
      return true
    elsif (@board['A2'] == X5['A2']) && (@board['B2'] == X5['B2']) && (@board['C2'] == X5['C2'])
      return true
    elsif (@board['A3'] == X6['A3']) && (@board['B3'] == X6['B3']) && (@board['C3'] == X6['C3'])
      return true
    elsif (@board['A1'] == X7['A1']) && (@board['B2'] == X7['B2']) && (@board['C3'] == X7['C3'])
      return true
    elsif (@board['A3'] == X8['A3']) && (@board['B2'] == X8['B2']) && (@board['C1'] == X8['C1'])
      return true
    else
      return false
    end
  end

  def opponent_wins?
    if (@board['A1'] == O1['A1']) && (@board['A2'] == O1['A2']) && (@board['A3'] == O1['A3'])
      return true
    elsif (@board['B1'] == O2['B1']) && (@board['B2'] == O2['B2']) && (@board['B3'] == O2['B3'])
      return true
    elsif (@board['C1'] == O3['C1']) && (@board['C2'] == O3['C2']) && (@board['C3'] == O3['C3'])
      return true
    elsif (@board['A1'] == O4['A1']) && (@board['B1'] == O4['B1']) && (@board['C1'] == O4['C1'])
      return true
    elsif (@board['A2'] == O5['A2']) && (@board['B2'] == O5['B2']) && (@board['C2'] == O5['C2'])
      return true
    elsif (@board['A3'] == O6['A3']) && (@board['B3'] == O6['B3']) && (@board['C3'] == O6['C3'])
      return true
    elsif (@board['A1'] == O7['A1']) && (@board['B2'] == O7['B2']) && (@board['C3'] == O7['C3'])
      return true
    elsif (@board['A3'] == O8['A3']) && (@board['B2'] == O8['B2']) && (@board['C1'] == O8['C1'])
      return true
    else
      return false
    end
  end
end
