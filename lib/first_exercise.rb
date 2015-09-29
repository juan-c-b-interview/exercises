class FirstExercise
  # The theoretical time complexity of this solution is O(n) (being 'n' the lenght of the array given as a parameter),
  # since it iterates twice two arrays of length 'n' (and O(2n) == O(n)) and for each iteration performs tasks
  # that do not depend on the array size.
  # The space complexity is also O(n), since it creates only an additional array of length 'n'.
  # This can be heavily increased if the integers on the array are arbitrarily big, as the multiplication
  # can become more time consuming, but for this calculation I assume the integer size it's limited.

    # This function receives an array of integers, and returns an array of integers that on each position 'i'
  # contains the product of all the integers of the array given as a parameter, except array[i]
  def self.solve array
    results = Array.new(array.length)

    results[0] = 1
    results[-1] = 1

    # Calculating the results on the left of each element
    array.each_with_index do |element, index|
      if index != 0
        results[index] = array[index - 1] * results[index - 1]
      elsif index == 1
        results[1] = array[0]
      end
    end

    max_array_index = array.length - 1

    # On each iteration, this variable will contain the product of all numbers on the right of the element
    # on 'i' position, such as a[j] / (i < j < n)
    previous_product = 1
    # Calculating the results on the right of each element
    array.reverse_each.with_index do |element, index|
      real_index = max_array_index - index
      results[real_index] = results[real_index] * previous_product
      previous_product = previous_product * element
    end
    results
  end

end
