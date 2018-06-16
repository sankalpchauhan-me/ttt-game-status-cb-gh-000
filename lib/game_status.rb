# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  counter = 0
  WIN_COMBINATIONS.each{|win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
      counter +=1
      return win_combination
    elsif board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
      counter +=1
      return win_combination
    end
  }
  if counter == 0
    return false
  end
end

def full?(board)
  if board.include?(" ")
    return false
  else
    return true
  end
end

def draw?(board)
  if(full?(board) == true && won?(board) == false )
    return true
  else
    return false
  end
end

def over?(board)
  if(full?(board) == true || won?(board) == true)
    return true
  elsif(full?(board) == false || won?(board) == true)
  else
    return false
  end
end
