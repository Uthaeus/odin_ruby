require_relative 'tictactoe.rb'


winning_combos = [[0, 4, 7], [0, 1, 3], [1, 5, 8], [3, 6, 9], [0, 5, 9], [3, 5, 7], [4, 5, 6], [7, 8, 9]]

def eval player_picks
  winning_combos.each do |win|
    count = 0
    player_picks.each do |p|
      if win.include?(p)
        count += 1
      end
    end
    if count == 3
      return true
    end
  end
  return false
end


def play turn
  if turn % 2 == 0
    token = 'X'
    puts "P1: choose location."
    pick = gets.chomp.to_i
    p1.update_pick(pick)
  else
    token = 'O'
    puts "P2: choose location."
    pick = gets.chomp.to_i
    p2.update_pick(pick)
  end
  @turn += 1
end

def intro
  puts "Welcome to Tic Tac Toe"
  sleep 1
  puts
end


intro

p1 = Player.new
p2 = Player.new

instance = 'y'
while instance == 'y' do 
  board = Board.new
  board.generate
  board.display_board
  @turn = 0

  play @turn

  puts "Would you like to play again? (y/n)"
  instance = gets.chomp
  if instance != 'y'
    puts "Thanks for playing!"
  end
end

gameplay = true
while gameplay == true do 

end






