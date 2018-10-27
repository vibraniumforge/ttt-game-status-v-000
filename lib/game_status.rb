# Helper Method
require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]

def won?(board)
  return false if full?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1=win_combination[0]
    win_index_2=win_combination[1]
    win_index_3=win_combination[2]

    position_1=board[win_index_1]
    position_2=board[win_index_2]
    position_3=board[win_index_3]

    if position_1==position_2 && position_2==position_3
      return win_combination
    end
  end
  return false
end

def full?(board)
  board.each_with_index do |item, index|
    if position_taken?(board, index)==false
      return false
    end
  end
   true
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  elsif won?(board)
    return false
  end
end

def over?(board)
  if won?(board)==true || draw?(board)==true || full?(board)==true
    return true
  end
end

# def winner(board)
# if
# end

# puts won?( [" ", " ", " ", "O", "O", " ", "X", "X", "X"])
