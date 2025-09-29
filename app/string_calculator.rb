class StringCalculator
  def add(numbers)
    return 0 if numbers.strip.empty?

    nums = numbers.split(",").map(&:to_i)
    return nums.first if nums.length == 1

    nums.sum
  end
end

calculator = StringCalculator.new
puts calculator.add("")
puts calculator.add("1") 
puts calculator.add("2,3") 
