# calculation password_generator

# Print out a command followed by two numbers
# the command will be either: ADD, SUB, DIV, or MUL
# the numers will be two numbers btw 0 - 100

COMMANDS = ["blue_score", "red_score", "green_score"]
output =""

50.times do
  output << "Blue #{rand(100) + 1}\n"
  output << "Red #{rand(100) + 1}\n"
  output << "Green #{rand(100) + 1}\n"
end

File.write('score_sum.txt',output)
