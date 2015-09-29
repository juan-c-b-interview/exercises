class FirstExercise

  def self.simple array
    # The most simple solution
    result = []
    array.each_with_index do |number, i|
      product = 1
      array.each_with_index do |number2, j|
        product = product * number2 unless i == j
      end
      result[i] = product
    end
    result
  end

  def self.solve array
    o_n_opt array
  end



  # This function receives an array of integers, and returns an array of integers that on each position 'i'
  # contains the product of all the integers of the array given as a parameter, except array[i]
  # The theoretical time complexity of this solution is O(n) (being 'n' the lenght of the array given as a parameter),
  # since it iterates twice two arrays of length 'n' (and O(2n) == O(n)) and for each iteration performs tasks
  # that do not depend on the array size.
  # The space complexity is also O(n), since it creates only an additional array of length 'n'.
  # This can be heavily increased if the integers on the array are arbitrarily big, as the multiplication
  # can become more time consuming, but for this calculation I assume the integer size it's limited.
  def self.o_n_opt array
    results_left = Array.new(array.length)

    results_left[0] = 1
    results_left[-1] = 1
    array.each_with_index do |element, index|
      if index != 0
        results_left[index] = array[index - 1] * results_left[index - 1]
      elsif index == 1
        results_left[1] = array[0]
      end
    end

    max_array_index = array.length - 1

    previous_product = 1
    array.reverse_each.with_index do |element, index|
      # Since in ruby there is no direct way of reverse iterate on a loop,
      real_index = max_array_index - index
      results_left[real_index] = results_left[real_index] * previous_product
      previous_product = previous_product * array[real_index]
    end
    results_left
  end

  def self.division array
    total_product = array.inject(:*)
    result = Array.new(array.length)

    array.each_with_index do |number, i|
      result[i] = total_product / number
    end
    result
  end

end
