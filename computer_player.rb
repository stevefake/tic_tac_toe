class ComputerPlayer < Player

  def computer_name
    @computer_name = 'HAL 9000'
  end

  def opponent_turn
    loop do
      response = VALID_RESPONSES[rand(1..9)]
      if @board_obj.move_unique?(response)
        @board_obj.send_move(response, 'O')
        break
      end
    end
  end
end
