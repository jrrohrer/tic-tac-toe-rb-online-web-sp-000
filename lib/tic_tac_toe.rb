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

# Determines if a given move is valid
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

# Counts occupied spaces on the board

def turn_count(board)
  counter = 0
  board.each do |turn|
    if turn == "X" || turn == "O"
      counter += 1
    end
  end
  counter
end

# Returns the current player

def current_player(board)
  if turn_count(board).even? == true
    return "X"
  else
    return "O"
  end
end


# Asks for user's input, makes valid moves and updates the board, or asks for new input if the move is invalid.
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
