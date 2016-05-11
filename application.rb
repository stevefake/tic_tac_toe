require 'pry'
require_relative 'board'
require_relative 'player'
require_relative 'computer_player'
require_relative 'board_render'

class Application
  def initialize
    @board_obj = Board.new
    @board_render = BoardRender.new
  end

  def verify_move(player)
    loop do
      move = player.player_turn
      if @board_obj.move_unique?(move)
        @board_obj.send_move(move, player.xo)
        if @mode == 'computer' && player == @opponent
          p 'HAL 9000 has moved here:'  # doesn't appear with use of 'clear'
        end
        @board_render.display_board(@board_obj.board)
        break
      elsif @board_obj.move_valid?(move) == false
        p 'Not a valid location. Try again.'
      else
        p 'There is already a piece at that location. Try again.'
      end
    end
  end

  def game_over?
    game_is_draw? || winner?
  end

  def game_is_draw?
    if @board_obj.moves_available? == false &&
        @board_obj.player_wins? == false &&
        @board_obj.opponent_wins? == false
      p 'The game has ended in a draw.'
    else
      false
    end
  end

  def winner?
    if @board_obj.player_wins?
      p "#{@player.name} wins!"
      true
    elsif @board_obj.opponent_wins?
      p "#{@opponent.name} wins!"
      true
    else
      false
    end
  end

  def setup_game
    # Intro
    p 'Would you like to play with (a) a friend, or (b) against the computer? Enter \'A\' or \'B\'.'
    loop do
      prompt = gets.chomp.upcase
      if 'A' == prompt
        @mode = 'human'
        @opponent = Player.new
        break
      elsif 'B' == prompt
        @mode = 'computer'
        @opponent = ComputerPlayer.new
        break
      else
        p 'Please select (a) or (b).'
      end
    end

    p 'Player 1, what is your name?'
    @player = Player.new
    @player.name(gets.chomp)
    @player.xo('X')
    if @mode == 'human'
      p 'Player 2, what is your name?'
      @opponent.name(gets.chomp)
      @opponent.xo('O')
    end
  end


  def play
    setup_game
    @board_render.display_board(@board_obj.board)

    # Game logic
    loop do
      verify_move(@player)
      exit if game_over?
      # Switch players
      verify_move(@opponent)
      exit if game_over?
    end
  end
end
