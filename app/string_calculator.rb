class StringCalculator
  def add(numbers)
    return 0 if numbers.strip.empty?

    nums = numbers.split(",").map(&:to_i)
    return nums.first if nums.length == 1
  end
end

calculator = StringCalculator.new
puts calculator.add("") 