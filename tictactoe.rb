class Board
  def initialize
    @board
  end

  def generate
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display_board
    puts "   #{@board[0]} | #{@board[1]} | #{@board[3]}"
    puts "  -----------"
    puts "   #{@board[4]} | #{@board[5]} | #{@board[6]}"
    puts "  -----------"
    puts "   #{@board[7]} | #{@board[8]} | #{@board[9]}"
  end

  def update player, location
    token = player == 'p1' ? 'X' : 'O'
    @board[location] = token
  end
end

class Player
  def initialize
    @picks
  end

  def picks
    @picks = []
  end

  def update_pick location
    @picks.push(location)
  end

end

class Game
  def initialize

  end

  def play

  end
end





# game = Board.new
# game.generate
# game.display_board

# game.update('p1', 4)
# game.display_board




















