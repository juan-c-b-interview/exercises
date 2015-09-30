require 'second_exercise'

RSpec.describe SecondExercise, "#second excercise" do

  context "with positive numbers" do
    it "test 1" do
      array = [1,2,3,4,5,6,7,8,9]
      n = 12
      result = SecondExercise.solve array, n
      expect(result).to be true
    end

    it "test 2" do
      array = [1,2,3,4,5,6]
      n = 20
      result = SecondExercise.solve array, n
      expect(result).to be false
    end

    it "the solution does not use the same number twice - 1" do
      array = [1,2,3,4,5,6]
      n = 12
      result = SecondExercise.solve array, n
      expect(result).to be false
    end

    it "the solution does not use the same number twice - 2" do
      array = [1,2,3,5,6]
      n = 10
      result = SecondExercise.solve array, n
      expect(result).to be false
    end

    it "the solution uses the same number twice if it is repeated" do
      array = [1,2,3,5,6,5]
      n = 10
      result = SecondExercise.solve array, n
      expect(result).to be true
    end

    it "and big numbers - 1" do
      array = [1,6,55,22,12,1050,2344,123,899,4876,4877,4875,23955,400,44,56,23,78,33,82,46,23,80,23,744,995]
      n = 5275
      result = SecondExercise.solve array, n
      expect(result).to be true
    end

    it "and big numbers - 2" do
      array = [1,6,55,22,12,1050,2344,123,899,4876,4877,4875,23955,400,44,56,23,78,33,82,46,23,80,23,744,995]
      n = 1395
      result = SecondExercise.solve array, n
      expect(result).to be true
    end

    it "and big numbers - 3" do
      array = [1,6,55,22,12,1050,2344,123,899,4876,4877,4875,23955,400,44,56,23,78,33,82,46,23,80,23,744,995]
      n = 1396
      result = SecondExercise.solve array, n
      expect(result).to be false
    end
  end

  context "with negative numbers" do
    it "test 1" do
      array = [1,2,3,-4,5,6,-7,8,9]
      n = 12
      result = SecondExercise.solve array, n
      expect(result).to be true
    end

    it "test 2" do
      array = [1,2,3,-4,5,6,-7,8,9]
      n = 1
      result = SecondExercise.solve array, n
      expect(result).to be true
    end

    it "test 3" do
      array = [1,2,3,-4,5,6,-7,8,9]
      n = 18
      result = SecondExercise.solve array, n
      expect(result).to be false
    end

    it "and negative target" do
      array = [1,2,3,-4,5,6,-7,8,9]
      n = -1
      result = SecondExercise.solve array, n
      expect(result).to be true
    end

    it "and negative target, using 2 negative numbers from the array for the result" do
      array = [1,2,3,-4,5,6,-7,8,9]
      n = -11
      result = SecondExercise.solve array, n
      expect(result).to be true
    end
  end

end
