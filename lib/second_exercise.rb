class SecondExercise
  # As I need to find a pair of numbers that together add up to 'n', the trick on this exercise is to find for
  # each number present in the array, if the difference between itself and 'n' exists in the array.
  # The tricky part here is to allow the solution to use twice the same value only if there are at least 2
  # occurences of it. That's why I count how many times each number appears in the array, instead of storing a
  # boolean.
  # I know it was not asked, but the time complexity of this algorithm is O(n), as it iterates twice the array and
  # on each iteration performs O(1) operations


  # This function receives and array of integers and a target integer 'n', and returns true only if there are 2
  # integers in different positions of the array that together add up to 'n'.
  def solve array, n
    hash = {}
    array.each do |number|
      hash[number] = hash[number] ? hash[number] + 1 : 1
    end
    array.each do |number|
      target = n - number
      if number != target
        return true if hash[target] >= 1 rescue nil
      else
        return true if hash[target] >= 2 rescue nil
      end
    end
    false
  end

end
