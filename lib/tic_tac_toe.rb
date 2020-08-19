# Nested Array defining winning move combinations
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # center column
  [2,5,8], # right column
  [0,4,8], # top l to bottom r diagonal
  [2,4,6] # top r to bottom l diagonal
]

# Displays the playing board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Converts the user's input to an array index
def input_to_index(input)
  input.to_i - 1
end

# This Method accepts the player's move
def move(array, index, character)
  array[index]= character
end

# Determines if a position on the board is taken
def position_taken?(array, index)
  if array[index] == " " || array[index] == "" || array[index] == nil
    return false
  else if array[index] == "X" || array[index] == "O"
    return true
  end
  end
end

