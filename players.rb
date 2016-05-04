
class Players
  attr_reader :response
  VALID_RESPONSES = %w(A1 A2 A3 B1 B2 B3 C1 C2 C3).freeze

  # @response = gets.chomp

  def player_turn
    if VALID_RESPONSES.include?(@response) == false
      p 'Not a valid entry, try again.'
    elsif board[response] == 'X'
      p 'You have already moved there. Pick a new location.'
    else
      board[response] = 'X'
      p board
      p 'What is your next move?' if board.values.include?(' ') == true
    end
  end
end
