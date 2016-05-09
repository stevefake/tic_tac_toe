require 'pry'
require_relative 'board'
require_relative 'player'
require_relative 'computer_player'
require_relative 'board_render'

class Application
  def initialize
    @board_obj = Board.create
    @player = Player.new
    @opponent = Player.new
    @computer_opponent = ComputerPlayer.new
    @board_render = BoardRender.new
  end

  def play

    p 'Would you like to play with a friend, or against the computer? Enter \'a\' or \'b\'.'
    if 'a' == gets.chomp
      mode = 'human'
    elsif 'b'
      mode = 'computer'
    else
      p 'You have entered an invalid input.'
    end

    p 'Player 1, what is your name?'
    @player.player_x_name
    if mode == 'human'
      p 'Player 2, what is your name?'
      @opponent.player_o_name
    end
    @board_render.display_board
    p "What is your move, #{@player.player_x}? (rows A1-C3)"

    # Game logic
    loop do
      if @board_obj.moves_available?
        # Player 1's turn
        @player.player_turn
        if @board_obj.player_wins?
          @board_render.display_board
          p "#{@player.player_x} wins!"
          break
        # Switch players
        else
          # Player 2's turn
          if @board_obj.moves_available?
            if mode == 'human'
              @board_render.display_board
              p "What is your move, #{@opponent.player_o}?"
              @opponent.opponent_turn
            else
              @computer_opponent.opponent_turn
            end
          end
          if @board_obj.opponent_wins?
            @board_render.display_board
            if mode == 'human'
              p "#{@opponent.player_o} wins!"
            else
              p "#{@computer_opponent.computer_name} wins!"
            end
            break
          else
            if @board_obj.moves_available?
              @board_render.display_board
              p "What is your move, #{@player.player_x}?"
            end
          end
        end
      else
        @board_render.display_board
        p 'The game has ended in a draw.'
        break
      end
    end
  end
end
