class Player
  attr_accessor :name, :xo, :player_turn

  def name(name = nil)
    @name ||= name
  end

  def xo(xo = nil)
    @xo ||= xo
  end

  def player_turn
    p "What is your move, #{name}? (rows A1-A3,B1-B3,C1-C3)"
    gets.chomp.upcase
  end
end
