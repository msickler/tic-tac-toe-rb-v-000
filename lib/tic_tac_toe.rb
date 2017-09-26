WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, character)
 board[index] = character
end

def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
     false
  else
     true
end
end

def valid_move? (board, index)
if index.between?(0,8) && !position_taken?(board, index)
  true
else
  false
end
end

def turn(board)
  puts "Please enter 1-9:"
 user_input = gets.strip
index = input_to_index(user_input)
until valid_move?(board, index) == true
  puts "please try a valid move. Use an empty location 1 through 9"
  user_input = gets.strip
 index = input_to_index(user_input)
end
move(board, index, character)
display_board(board)
end