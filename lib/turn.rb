def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,position)
  if position_taken?(board,position.to_i - 1) == false && (position.to_i - 1).between?(0, 8)  
  true
  else 
  false
  end
end

def position_taken?(board,position)
  if board[position]== " " || board[position] == "" || board[position] == nil
    false
  else 
  true
  end
end

def move(board, input, player = "X")
  board[input.to_i - 1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board,input) == true 
    move(board, input, "X")
    display_board(board)
  else
    turn(board)
  end
end