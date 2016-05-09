require_relative 'board'

class Player
  attr_reader :response, :player_x, :player_o
  VALID_RESPONSES = %w(A1 A2 A3 B1 B2 B3 C1 C2 C3).freeze

  def initialize
    @board_obj = Board.create
    @board = @board_obj.board
  end

  def player_x_name
    @player_x = gets.chomp
  end

  def player_o_name
    @player_o = gets.chomp
  end

  def player_turn
    response = gets.chomp.upcase

    if VALID_RESPONSES.include?(response)
      if @board_obj.move_unique?(response)
        @board_obj.send_move(response, 'X')
      else
        p 'There is already a piece at that location. Try again.'
        response = gets.chomp.upcase
      end
    else
      p 'Not a valid location, try again.'
      response = gets.chomp.upcase
    end
  end

  def opponent_turn
    response = gets.chomp.upcase
    if VALID_RESPONSES.include?(response)
      if @board_obj.move_unique?(response)
        @board_obj.send_move(response, 'O')
      else
        p 'There is already a piece at that location. Try again.'
        response = gets.chomp.upcase
      end
    else
      p 'Not a valid entry, try again.'
      response = gets.chomp.upcase
    end
  end
end
