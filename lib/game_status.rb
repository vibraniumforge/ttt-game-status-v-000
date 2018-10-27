# Helper Method
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
  WIN_COMBINATIONS.each do |win_combination|
    win_combination.each do |win_instance|
    win_index_1=win_instance[0]
    win_index_2=win_instance[1]
    win_index_3=win_instance[2]

    position_1=board[win_index_1]
    position_2=board[win_index_2]
    position_3=board[win_index_3]

    if position_1=="X" && position_2=="X" && position_3=="X"
      return win_instance
    elsif position_1=="O" && position_2=="O" && position_3=="O"
      return win_instance
    else
      return false
    end
  end
end
end


def full? (board)
  is_full=true
  board.each do |square|
    if position_taken?(square)
      is_full=false
    end
  end
end

def draw?(board)
if won?(board)==false && full?(board)==true
  return true
elsif won?(board==false) && full?(board)==false
  return false
elsif won?(board)==true
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
