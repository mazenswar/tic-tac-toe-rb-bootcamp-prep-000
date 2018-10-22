WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #left column
  [1, 4, 7], #middle column
  [2, 5, 8], #right column
  [2, 4, 6], #diagonal right to left
  [0, 4, 8]  #diagonal left to right
  ]


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input) 
  input.to_i - 1
end 

def move(board, index, character)
<<<<<<< HEAD
  board[index] = character
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else 
    return false
=======
  if valid_move?(board, index)
    board[index] = character
    return display_board(board)
  else 
    puts "That position is taken, please enter another number between 1-9"
  end
end

  
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else 
    return true
>>>>>>> 71088db55e56e453f64510d576b77d1842cefc7f
  end
end


def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    return true
  else 
    return false 
  end 
end 

def turn(board)
<<<<<<< HEAD
  puts "enter a number 1-9: " 
  i = (gets.strip)
=======
  puts "Plese enter a number 1-9: "
  i = gets.strip
>>>>>>> 71088db55e56e453f64510d576b77d1842cefc7f
  ix = input_to_index(i)
  char = current_player(board)
  if valid_move?(board, ix)
    move(board, ix, char)
  else
<<<<<<< HEAD
=======
    puts "invalid input"
>>>>>>> 71088db55e56e453f64510d576b77d1842cefc7f
    turn(board)
  end
end

def turn_count(board)
  count = 0
  board.each do |i|
    if i == "X" || i == "O"
      count += 1
    end
  end
  return count
end


def current_player(board)
  if turn_count(board) % 2 == 0
    "X"
<<<<<<< HEAD
  else
=======
  elsif turn_count(board) == 0 || turn_count(board) % 3 == 0
>>>>>>> 71088db55e56e453f64510d576b77d1842cefc7f
    "O"
  end
end


<<<<<<< HEAD
def won?(board)
 WIN_COMBINATIONS.each do |comb|
   i1 = comb[0]
   i2 = comb[1]
   i3 = comb[2]
   
   pos1 = board[i1]
   pos2 = board[i2]
   pos3 = board[i3]
   
   if pos1 == "X" && pos2 == "X" && pos3 == "X"
     return comb
   elsif pos1 == "O" && pos2 == "O" && pos3 == "O"
     return comb
   end
 end
 return false
end

=======
>>>>>>> 71088db55e56e453f64510d576b77d1842cefc7f
def full?(board)
  board.all? do |arr|
      arr == "X" || arr == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
<<<<<<< HEAD
  draw?(board) || won?(board) || full?(board)
=======
  draw?(board) || won?(board)
>>>>>>> 71088db55e56e453f64510d576b77d1842cefc7f
end

def winner(board)
  if won?(board)
    arr = won?(board)
    i = arr[0]
    if board[i] == "X"
      "X"
    elsif board[i] == "O"
      "O"
    end
  else
    nil
  end
end

<<<<<<< HEAD
def play(board)
  while !over?(board)
    turn(board)
    display_board(board)
=======

def won?(board)
 WIN_COMBINATIONS.each do |comb|
   i1 = comb[0]
   i2 = comb[1]
   i3 = comb[2]
   
   pos1 = board[i1]
   pos2 = board[i2]
   pos3 = board[i3]
   
   if pos1 == "X" && pos2 == "X" && pos3 == "X"
     return comb
   elsif pos1 == "O" && pos2 == "O" && pos3 == "O"
     return comb
   end
 end
 false
end

def play(board)
  until over?(board)
    turn(board)
>>>>>>> 71088db55e56e453f64510d576b77d1842cefc7f
  end
  if won?(board)
    puts "Congratulations #{winner(board)}!"
  elsif draw?(board)
    puts "Cat's Game!"
  end
end
