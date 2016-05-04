require 'pry'
require_relative 'board'

class Application

  board = Board.new.create_board

  p board

  p 'What is your location? (A1 is the upper-left, A2 is the upper-middle, A3 is
  the upper-right, B1 is the middle-left, etc.)'

  valid_responses = ['A1', 'A2', 'A3', 'B1', 'B2', 'B3', 'C1', 'C2', 'C3']

  loop do
    if board.values.include?(' ') == true
      response = gets.chomp

      if valid_responses.include?(response) == false
        p 'Not a valid entry, try again.'
      elsif board[response] == 'X'
        p 'You have already moved there. Pick a new location.'
      else
        board[response] = 'X'
        p board
        if board.values.include?(' ') == true
          p 'What is your next move?'
        end
      end

    else
      p 'The game is over'
      break
    end
  end
  #
  # def prompt_user_location
  #   p 'What is your location? (A1 is the upper-left, A2 is the upper-middle, A3 is
  #   the upper-right, B1 is the middle-left, etc.)'
  # end
  #
  # def invalid_entry
  #   responses = ['A1', 'A2', 'A3', 'B1', 'B2', 'B3', 'C1', 'C2', 'C3']
  #   response = gets.chomp
  #   if responses.include?(response) == false
  #     p 'Not a valid entry, try again.'
  #   end
  # end

end
