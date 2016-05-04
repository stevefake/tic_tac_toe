require 'pry'

class TicTacToe

  # p "_|_|_\n
  #    _|_|_\n
  #     | | "

  # p board = [
  #   ["", "", ""],
  #   ["", "", ""],
  #   ["", "", ""]
  # ]

  board = {
    'A1' => "", 'A2' => "", 'A3' => "",
    'B1' => "", 'B2' => "", 'B3' => "",
    'C1' => "", 'C2' => "", 'C3' => ""
  }

  p board

  p 'What is your location? (A1 is the upper-left, A2 is the upper-middle, A3 is
  the upper-right, B1 is the middle-left, etc.)'

  responses = ['A1', 'A2', 'A3', 'B1', 'B2', 'B3', 'C1', 'C2', 'C3']
  response = gets.chomp
  if responses.include?(response) == false
    p 'Not a valid entry, try again.'
  else
    board[response] = 'X'
  end

  p board

  def create_board
    board = {
      A1: "", A2: "", A3: "",
      B1: "", B2: "", B3: "",
      C1: "", C2: "", C3: ""
    }
  end

  def prompt_user_location
    p 'What is your location? (A1 is the upper-left, A2 is the upper-middle, A3 is
    the upper-right, B1 is the middle-left, etc.)'
  end

  def invalid_entry
    responses = ['A1', 'A2', 'A3', 'B1', 'B2', 'B3', 'C1', 'C2', 'C3']
    response = gets.chomp
    if responses.include?(response) == false
      p 'Not a valid entry, try again.'
    end
  end

end
