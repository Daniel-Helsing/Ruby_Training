class Tictactoe
@@board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
@@play_on = true
@@counter = 0
game= Tictactoe.new


def play
  while @@play_on == true
    puts "What box number would you like to select\n"
    x = gets
    print "Please select x or o\n"
    selection = gets.chomp.downcase.strip
    x --
    @@board[x] = selection
    @@counter++
    game.check
  end
  puts "Thank you for playing"
end

def check
  if (@@board[0] == "x" && @@board[1] == "x" && @@board[2] == "x") 
    @@play_on == false end
  if (@@board[3] == "x" && @@board[4] == "x" && @@board[5] == "x") 
    @@play_on == false end
  if (@@board[6] == "x" && @@board[7] == "x" && @@board[8] == "x") 
    @@play_on == false end
  if (@@board[0] == "x" && @@board[3] == "x" && @@board[6] == "x") 
    @@play_on == false end
  if (@@board[1] == "x" && @@board[4] == "x" && @@board[7] == "x") 
    @@play_on == false end
  if (@@board[2] == "x" && @@board[5] == "x" && @@board[8] == "x") 
    @@play_on == false end
  if (@@board[0] == "x" && @@board[4] == "x" && @@board[8] == "x") 
    @@play_on == false end
  if (@@board[2] == "x" && @@board[4] == "x" && @@board[6] == "x") 
    @@play_on == false end
  if (@@board[0] == "o" && @@board[1] == "o" && @@board[2] == "o") 
    @@play_on == false end
  if (@@board[3] == "o" && @@board[4] == "o" && @@board[5] == "o") 
    @@play_on == false end
  if (@@board[6] == "o" && @@board[7] == "o" && @@board[8] == "o") 
    @@play_on == false end
  if (@@board[0] == "o" && @@board[3] == "o" && @@board[6] == "o") 
    @@play_on == false end
  if (@@board[1] == "o" && @@board[4] == "o" && @@board[7] == "o") 
    @@play_on == false end
  if (@@board[2] == "o" && @@board[5] == "o" && @@board[8] == "o") 
    @@play_on == false end
  if (@@board[0] == "o" && @@board[4] == "o" && @@board[8] == "o") 
    @@play_on == false end
  if (@@board[2] == "o" && @@board[4] == "o" && @@board[6] == "o") 
    @@play_on == false end
  if @@counter == 9
    @@play_on == false end  
end
game.play
end