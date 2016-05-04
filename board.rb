class Board
  def create_board
    {
      'A1' => ' ', 'A2' => ' ', 'A3' => ' ',
      'B1' => ' ', 'B2' => ' ', 'B3' => ' ',
      'C1' => ' ', 'C2' => ' ', 'C3' => ' '
    }
  end

  PLAYER_X_WIN_CONFIG_1 =
    { 'A1' => 'X', 'A2' => 'X', 'A3' => 'X',
      'B1' => ' ', 'B2' => ' ', 'B3' => ' ',
      'C1' => ' ', 'C2' => ' ', 'C3' => ' ' }.freeze
  PLAYER_X_WIN_CONFIG_2 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => ' ',
      'B1' => 'X', 'B2' => 'X', 'B3' => 'X',
      'C1' => ' ', 'C2' => ' ', 'C3' => ' ' }.freeze
  PLAYER_X_WIN_CONFIG_3 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => ' ',
      'B1' => ' ', 'B2' => ' ', 'B3' => ' ',
      'C1' => 'X', 'C2' => 'X', 'C3' => 'X' }.freeze
  PLAYER_X_WIN_CONFIG_4 =
    { 'A1' => 'X', 'A2' => ' ', 'A3' => ' ',
      'B1' => 'X', 'B2' => ' ', 'B3' => ' ',
      'C1' => 'X', 'C2' => ' ', 'C3' => ' ' }.freeze
  PLAYER_X_WIN_CONFIG_5 =
    { 'A1' => ' ', 'A2' => 'X', 'A3' => ' ',
      'B1' => ' ', 'B2' => 'X', 'B3' => ' ',
      'C1' => ' ', 'C2' => 'X', 'C3' => ' ' }.freeze
  PLAYER_X_WIN_CONFIG_6 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => 'X',
      'B1' => ' ', 'B2' => ' ', 'B3' => 'X',
      'C1' => ' ', 'C2' => ' ', 'C3' => 'X' }.freeze
  PLAYER_X_WIN_CONFIG_7 =
    { 'A1' => 'X', 'A2' => ' ', 'A3' => ' ',
      'B1' => ' ', 'B2' => 'X', 'B3' => ' ',
      'C1' => ' ', 'C2' => ' ', 'C3' => 'X' }.freeze
  PLAYER_X_WIN_CONFIG_8 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => 'X',
      'B1' => ' ', 'B2' => 'X', 'B3' => ' ',
      'C1' => 'X', 'C2' => ' ', 'C3' => ' ' }.freeze

  PLAYER_O_WIN_CONFIG_1 =
    { 'A1' => 'O', 'A2' => 'O', 'A3' => 'O',
      'B1' => ' ', 'B2' => ' ', 'B3' => ' ',
      'C1' => ' ', 'C2' => ' ', 'C3' => ' ' }.freeze
  PLAYER_O_WIN_CONFIG_2 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => ' ',
      'B1' => 'O', 'B2' => 'O', 'B3' => 'O',
      'C1' => ' ', 'C2' => ' ', 'C3' => ' ' }.freeze
  PLAYER_O_WIN_CONFIG_3 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => ' ',
      'B1' => ' ', 'B2' => ' ', 'B3' => ' ',
      'C1' => 'O', 'C2' => 'O', 'C3' => 'O' }.freeze
  PLAYER_O_WIN_CONFIG_4 =
    { 'A1' => 'O', 'A2' => ' ', 'A3' => ' ',
      'B1' => 'O', 'B2' => ' ', 'B3' => ' ',
      'C1' => 'O', 'C2' => ' ', 'C3' => ' ' }.freeze
  PLAYER_O_WIN_CONFIG_5 =
    { 'A1' => ' ', 'A2' => 'O', 'A3' => ' ',
      'B1' => ' ', 'B2' => 'O', 'B3' => ' ',
      'C1' => ' ', 'C2' => 'O', 'C3' => ' ' }.freeze
  PLAYER_O_WIN_CONFIG_6 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => 'O',
      'B1' => ' ', 'B2' => ' ', 'B3' => 'O',
      'C1' => ' ', 'C2' => ' ', 'C3' => 'O' }.freeze
  PLAYER_O_WIN_CONFIG_7 =
    { 'A1' => 'O', 'A2' => ' ', 'A3' => ' ',
      'B1' => ' ', 'B2' => 'O', 'B3' => ' ',
      'C1' => ' ', 'C2' => ' ', 'C3' => 'O' }.freeze
  PLAYER_O_WIN_CONFIG_8 =
    { 'A1' => ' ', 'A2' => ' ', 'A3' => 'O',
      'B1' => ' ', 'B2' => 'O', 'B3' => ' ',
      'C1' => 'O', 'C2' => ' ', 'C3' => ' ' }.freeze

end
