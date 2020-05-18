
  puts "Hello, user. Place your first move:"
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  def display_board(array)
    puts array
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def position_taken?(array, index)
     if (array[index] == " ") || (array[index] == "") || (array[index] == nil)
        return false
     else
        return true
     end
  end
  def valid_move?(array, index)
    if index.between?(0, 8) && !position_taken?(array, index)
      return true
    else
      return false
    end
  end
  def move(array, index, token = "X")
    array[index] = token
  end
def turn(array)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(array, index)
    move(array, index, token = "X")
    turn(array)
  end
display_board(array)
end
