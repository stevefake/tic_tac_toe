class Board

  def create_board
    {
      'A1' => ' ', 'A2' => ' ', 'A3' => ' ',
      'B1' => ' ', 'B2' => ' ', 'B3' => ' ',
      'C1' => ' ', 'C2' => ' ', 'C3' => ' '
    }
  end

  def move(key)
    { key => value }
  end

  def gameover
    if board.values.include?(' ') == false
    end
  end

end
