require_relative 'app/string_calculator'

calculator = StringCalculator.new
puts calculator.add("")
puts calculator.add("1") 
puts calculator.add("2,3")
puts calculator.add("2,3,32,43,7,78,45") 
puts calculator.add("1\n2,3")
puts calculator.add("//;\n3;2")
# puts calculator.add("1,-2,3,-5") comment to avoid crash