
  puts "Hello, user. Place your first move:"
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  def display_board(array)
    puts array
  end
  gets.input
  def input_to_index(input)
    input.to_i - 1
  end
  index = input_to_index(input)
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
