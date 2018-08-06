#clear ruby in Terminal : exit then clear; irb

puts "password_generator"
puts "\tThis is our password generator\n\tThis will translate a phrase into"

puts "double quote excutes special characters"
puts 'single quote "string" out'

putc "b"
putc "a"

1.times {
  putc '1'
  sleep 1
}

#comments
# We are going to generate a password off of a phrase the user gives us
# We will first get rid of all spaces
# We will then translate characters:
# a=4
# e=3
# i=1
# o=0
# s=$
# Example: Catch the ball will be C4tchTh3B4ll

#Variable
name = "ey"
puts name

#Get methods
#"something here and there with gsub no spacing".gsub(" ","")
#ruby when it comes if, end comes with

puts "\n\n\nPlease enter a phrase you want to translated"

phrase = gets.chomp

no_space_string = phrase.gsub(" ","")

pass_phrase = ""

split_string = no_space_string.split("")

#split_string.each do |character|
#  case character.downcase
#  when "a" then pass_phrase << '4'
#  when "e" then pass_phrase << '3'
#  when "i" then pass_phrase << '1'
#  when "o" then pass_phrase << '0'
#  when "s" then pass_phrase << '$'
#  else
#    pass_phrase << character
#  end


#  if character.downcase == "a"
#    pass_phrase << "4"
#  elsif character.downcase =="e"
#    pass_phrase << "3"
#  else
#    pass_phrase << character
#end


puts "You entered: \"#{ phrase }\""
puts "The new pass phrase is \"#{pass_phrase}\""



# {} == pair things up
# ages = {"joe"=>42, "ey"=>33, "julie"=>35}
# excute ages["julie"]
# [] == each arrays
# dictionary.has_key?('z') [question marks]
# gives answer true/false
