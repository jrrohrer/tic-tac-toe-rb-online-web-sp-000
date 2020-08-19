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

# Boolean Method for determining if a game has been won
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
      return win_combination
    end
  end
  return false
end

# Boolean Method for determining if the board is full
def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end

# Boolean Method for determining if the game is a draw
def draw?(board)
  if !won?(board) && full?(board)
    return true
  else if !won?(board) && !full?(board)
    return false
  else won?(board)
    return false
  end
end
end


# Boolean Method for determining if the game is over
def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end

# Method for determining/outputting the winner
def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
