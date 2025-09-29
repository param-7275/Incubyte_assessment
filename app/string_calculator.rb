class StringCalculator
  def add(numbers)
    return 0 if numbers.strip.empty?
    delimiters = [",", "\n"]

    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      custom_delim = parts.first[2..]
      delimiters << custom_delim
      numbers = parts.last
    end

    nums = numbers.split(Regexp.union(delimiters)).map(&:to_i)
    return nums.first if nums.length == 1

    nums.sum
  end
end

calculator = StringCalculator.new
puts calculator.add("")
puts calculator.add("1") 
puts calculator.add("2,3")
puts calculator.add("2,3,32,43,7,78,45") 
puts calculator.add("1\n2,3")
puts calculator.add("//;\n3;2")

