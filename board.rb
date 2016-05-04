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

  PLAYER_X_WIN_CONFIGS = {
    k1: {'A1' => 'X', 'A2' => 'X', 'A3' => 'X'},
    k2: {'B1' => 'X', 'B2' => 'X', 'B3' => 'X'},
    k3: {'C1' => 'X', 'C2' => 'X', 'C3' => 'X'},
    k4: {'A1' => 'X', 'B1' => 'X', 'C1' => 'X'},
    k5: {'A2' => 'X', 'B2' => 'X', 'C2' => 'X'},
    k6: {'A3' => 'X', 'B3' => 'X', 'C3' => 'X'},
    k7: {'A1' => 'X', 'B2' => 'X', 'C3' => 'X'},
    k8: {'A3' => 'X', 'B2' => 'X', 'C1' => 'X'}
  }
  # end

  # def game_won_by_player_o
  #   if {'A1' => 'O', 'A2' => 'O', 'A3' => 'O'} ||
  #      {'B1' => 'O', 'B2' => 'O', 'B3' => 'O'} ||
  #      {'C1' => 'O', 'C2' => 'O', 'C3' => 'O'} ||
  #      {'A1' => 'O', 'B1' => 'O', 'C1' => 'O'} ||
  #      {'A2' => 'O', 'B2' => 'O', 'C2' => 'O'} ||
  #      {'A3' => 'O', 'B3' => 'O', 'C3' => 'O'} ||
  #      {'A1' => 'O', 'B2' => 'O', 'C3' => 'O'} ||
  #      {'A3' => 'O', 'B2' => 'O', 'C1' => 'O'}
  #     return true
  #   end
  # end

end
