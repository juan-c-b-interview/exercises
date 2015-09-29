require 'first_exercise'

RSpec.describe FirstExercise, "#first excercise" do

  def check_result array, result
    total_product = array.inject(:*)
    new_array = Array.new(array.length)

    array.each_with_index do |number, i|
      new_array[i] = total_product / number
    end
    expect(result).to eq(new_array)
  end

  context "with positive numbers" do
    it "for array[i] calculates the product of all numbers except i" do
      array = [1,2,3,4,5,6,7,8]
      result = FirstExercise.solve array
      check_result array, result
    end

    it "for array[i] calculates the product of all numbers except i with repeated numbers" do
      array = [1,2,3,4,3,6,53,8,53,100,23,345,12,65,34,12,78,1,4324,123,543,73,24,7,2,34,6,7,82,34,67,334]
      result = FirstExercise.solve array
      check_result array, result
    end

    it "for array[i] calculates the product of all numbers except i with the same number in all positions" do
      array = [8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8]
      result = FirstExercise.solve array
      check_result array, result
    end
  end

  context "with negative numbers" do
    it "for array[i] calculates the product of all numbers except i" do
      array = [-1,-2,-3,-4]
      result = FirstExercise.solve array
      check_result array, result
    end

    it "for array[i] calculates the product of all numbers except i with some positive numbers" do
      array = [-1,2,-3,-4,-1,5,-11,4]
      result = FirstExercise.solve array
      check_result array, result
    end
  end

end
