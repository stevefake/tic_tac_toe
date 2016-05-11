class ComputerPlayer < Player
  VALID_RESPONSES = %w(A1 A2 A3 B1 B2 B3 C1 C2 C3).freeze

  def name
    @name = 'HAL 9000'
  end

  def xo
    @xo = 'O'
  end

  def player_turn
    VALID_RESPONSES[rand(1..9)]
  end
end
