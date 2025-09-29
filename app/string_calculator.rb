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

    negative_numbers = nums.select { |n| n < 0 }
    raise "negative numbers not allowed #{negative_numbers.join(',')}" if negative_numbers.any?

    return nums.first if nums.length == 1
    nums.sum
  end
end

