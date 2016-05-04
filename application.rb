require 'pry'
require_relative 'board'
# require_relative 'players'

class Application

  board = Board.new.create_board
  # player_x_wins = Board::PLAYER_X_WIN_CONFIGS
  # player_o_wins = Board.new.game_won_by_player_o
  # player_x_wins[x].each do |x|
  # player_x_wins[:k2] == board[key]


  p board

  p 'Player 1, what is your name?'
  player_x = gets.chomp
  p 'Player 2, what is your name?'
  player_o = gets.chomp
  p 'What is your location? (A1 is the upper-left, A2 is the upper-middle, A3 is
  the upper-right, B1 is the middle-left, etc.)'

  valid_responses = ['A1', 'A2', 'A3', 'B1', 'B2', 'B3', 'C1', 'C2', 'C3']
  # binding.pry

    loop do
      if board.values.include?(' ') == true # && ((Board.new.game_won_by_player_x == false) && (Board.new.game_won_by_player_o == false))
        response = gets.chomp
          # Players.new.player_turn
          if valid_responses.include?(response) == false
            p 'Not a valid entry, try again.'
          elsif board[response] == 'X'
            p 'You have already moved there. Pick a new location.'
          elsif board[response] == 'O'
            p "#{player_o} has already moved there. Pick a new location."
          else
            board[response] = 'X'
            p board
            # if board == board_x_wins
            #   p "#{player_x} wins!"
            # end
            # break
            if board.values.include?(' ') == true
              # if board[response] == 'X'
              p "What is your next move, #{player_o}?"
              loop do
                response = gets.chomp
                if valid_responses.include?(response) == false
                  p 'Not a valid entry, try again.'
                elsif board[response] == 'O'
                  p 'You have already moved there. Pick a new location.'
                elsif board[response] == 'X'
                  p "#{player_x} has already moved there. Pick a new location."
                else
                  board[response] = 'O'
                  p board
                  # if board == player_o_wins
                  #   p "#{player_o} wins!"
                  # end
                  # break
                  if board.values.include?(' ') == true
                    p "What is your next move, #{player_x}?"
                  end
                  break
                end
              end
            end
          end
      else
        p 'The game is over'
        break
    end
  end
end
