require 'pry'
require_relative 'board'
# require_relative 'players'

class Application

  board = Board.new.create_board
  x1 = Board::PLAYER_X_WIN_CONFIG_1
  x2 = Board::PLAYER_X_WIN_CONFIG_2
  x3 = Board::PLAYER_X_WIN_CONFIG_3
  x4 = Board::PLAYER_X_WIN_CONFIG_4
  x5 = Board::PLAYER_X_WIN_CONFIG_5
  x6 = Board::PLAYER_X_WIN_CONFIG_6
  x7 = Board::PLAYER_X_WIN_CONFIG_7
  x8 = Board::PLAYER_X_WIN_CONFIG_8

  o1 = Board::PLAYER_O_WIN_CONFIG_1
  o2 = Board::PLAYER_O_WIN_CONFIG_2
  o3 = Board::PLAYER_O_WIN_CONFIG_3
  o4 = Board::PLAYER_O_WIN_CONFIG_4
  o5 = Board::PLAYER_O_WIN_CONFIG_5
  o6 = Board::PLAYER_O_WIN_CONFIG_6
  o7 = Board::PLAYER_O_WIN_CONFIG_7
  o8 = Board::PLAYER_O_WIN_CONFIG_8

  p board

  p 'Player 1, what is your name?'
  player_x = gets.chomp
  p 'Player 2, what is your name?'
  player_o = gets.chomp
  p 'What is your location? (A1 is the upper-left, A2 is the upper-middle, A3 is
  the upper-right, B1 is the middle-left, etc.)'

  valid_responses = ['A1', 'A2', 'A3', 'B1', 'B2', 'B3', 'C1', 'C2', 'C3']

    loop do

        if board.values.include?(' ') == true
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
            if ((board['A1'] == x1['A1']) && (board['A2'] == x1['A2']) && (board['A3'] == x1['A3']))
              p "#{player_x} wins!"
              break
            elsif ((board['B1'] == x2['B1']) && (board['B2'] == x2['B2']) && (board['B3'] == x2['B3']))
              p "#{player_x} wins!"
              break
            elsif ((board['C1'] == x3['C1']) && (board['C2'] == x3['C2']) && (board['C3'] == x3['C3']))
              p "#{player_x} wins!"
              break
            elsif ((board['A1'] == x4['A1']) && (board['B1'] == x4['B1']) && (board['C1'] == x4['C1']))
              p "#{player_x} wins!"
              break
            elsif ((board['A2'] == x5['A2']) && (board['B2'] == x5['B2']) && (board['C2'] == x5['C2']))
              p "#{player_x} wins!"
              break
            elsif ((board['A3'] == x6['A3']) && (board['B3'] == x6['B3']) && (board['C3'] == x6['C3']))
              p "#{player_x} wins!"
              break
            elsif ((board['A1'] == x7['A1']) && (board['B2'] == x7['B2']) && (board['C3'] == x7['C3']))
              p "#{player_x} wins!"
              break
            elsif ((board['A3'] == x8['A3']) && (board['B2'] == x8['B2']) && (board['C1'] == x8['C1']))
              p "#{player_x} wins!"
              break
            elsif board.values.include?(' ') == true
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
                  if ((board['A1'] == o1['A1']) && (board['A2'] == o1['A2']) && (board['A3'] == o1['A3']))
                    p "#{player_o} wins!"
                    break
                  elsif ((board['B1'] == o2['B1']) && (board['B2'] == o2['B2']) && (board['B3'] == o2['B3']))
                    p "#{player_o} wins!"
                    break
                  elsif ((board['C1'] == o3['C1']) && (board['C2'] == o3['C2']) && (board['C3'] == o3['C3']))
                    p "#{player_o} wins!"
                    break
                  elsif ((board['A1'] == o4['A1']) && (board['B1'] == o4['B1']) && (board['C1'] == o4['C1']))
                    p "#{player_o} wins!"
                    break
                  elsif ((board['A2'] == o5['A2']) && (board['B2'] == o5['B2']) && (board['C2'] == o5['C2']))
                    p "#{player_o} wins!"
                    break
                  elsif ((board['A3'] == o6['A3']) && (board['B3'] == o6['B3']) && (board['C3'] == o6['C3']))
                    p "#{player_o} wins!"
                    break
                  elsif ((board['A1'] == o7['A1']) && (board['B2'] == o7['B2']) && (board['C3'] == o7['C3']))
                    p "#{player_o} wins!"
                    break
                  elsif ((board['A3'] == o8['A3']) && (board['B2'] == o8['B2']) && (board['C1'] == o8['C1']))
                    p "#{player_o} wins!"
                    break
                  elsif board.values.include?(' ') == true
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
