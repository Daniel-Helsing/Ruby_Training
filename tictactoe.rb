@board = ['0', '1', '2', '3', '4', '5', '6', '7', '8']
@play_on = true
@counter = 0

def check
  if (@board[0] == "x" && @board[1] == "x" && @board[2] == "x") 
    @play_on = false 
  end
  if (@board[3] == "x" && @board[4] == "x" && @board[5] == "x") 
    @play_on = false 
  end
  if (@board[6] == "x" && @board[7] == "x" && @board[8] == "x") 
    @play_on = false 
  end
  if (@board[0] == "x" && @board[3] == "x" && @board[6] == "x") 
    @play_on = false 
  end
  if (@board[1] == "x" && @board[4] == "x" && @board[7] == "x") 
    @play_on = false 
  end
  if (@board[2] = "x" && @board[5] == "x" && @board[8] == "x") 
    @play_on = false 
  end
  if (@board[0] == "x" && @board[4] == "x" && @board[8] == "x") 
    @play_on = false 
  end
  if (@board[2] == "x" && @board[4] == "x" && @board[6] == "x") 
    @play_on = false 
  end
  if (@board[0] == "o" && @board[1] == "o" && @board[2] == "o") 
    @play_on = false 
  end
  if (@board[3] == "o" && @board[4] == "o" && @board[5] == "o") 
    @play_on = false 
  end
  if (@board[6] == "o" && @board[7] == "o" && @board[8] == "o") 
    @play_on = false 
  end
  if (@board[0] == "o" && @board[3] == "o" && @board[6] == "o") 
    @play_on = false 
  end
  if (@board[1] = "o" && @board[4] == "o" && @board[7] == "o") 
    @play_on = false 
  end
  if (@board[2] == "o" && @board[5] == "o" && @board[8] == "o") 
    @play_on = false 
  end
  if (@board[0] == "o" && @board[4] == "o" && @board[8] == "o") 
    @play_on = false 
  end
  if (@board[2] == "o" && @board[4] == "o" && @board[6] == "o") 
    @play_on = false 
  end
  if @counter == 9
    @play_on = false 
  end  
end

def output_tictactoe
  puts @board[0]+"|"+@board[1]+"|"+@board[2]
  puts "-----"
  puts @board[3]+"|"+@board[4]+"|"+@board[5]
  puts "-----"
  puts @board[6]+"|"+@board[7]+"|"+@board[8]
end

def play_tic
  until @play_on == false
    output_tictactoe
    puts "Player 1:(x) What box number would you like to select"
    x = gets.strip.to_i
    @board[x] = "x"
    output_tictactoe
    puts "Player 2:(o) What box number would you like to select\n"
    o = gets.strip.to_i
    @board[o] = "o"
  end
  puts "Thank you for playing"
end

play_tic