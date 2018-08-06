# Blue, Read Green : Each team get score 1 - 100
# Each teams gets 50 scores
# Read file for each teams and show average

blue_score = []
red_score = []
green_score =[]

File.open('score_sum.txt') do |file|

  file.each_line do |line|

    team_and_score = line.split
    team = team_and_score[0]
    score = team_and_score[1].to_i

    case team
    when 'Blue' then blue_score << score
    when 'Red' then red_score << score
    when 'Green' then green_score << score
    end
  end
end

def average(arrays)
  arrays.sum / arrays.length
end

puts  "Blue Team #{ average (blue_score)}"
puts  "Red Team #{ average (red_score)}"
puts  "Green Team #{ average (green_score)}"

#practice hash and arrays
