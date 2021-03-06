#set win variable to zero
win = 0
#set loses variable to zero
loses = 0
#Prompt user to chose r, p or s
history = []
#get user input, set to choice variable, make sure it's lowercase

#Select computer choice randomly from arrary, set to variable computer

#Three time do iterate
3.times do
  puts "Choose r, p, or s"
  choice = gets.chomp.downcase
  computer = ['r', 'p', 's'].sample
  #use case statement with [player, computer] (This will be challenging, but totally worth it!)
  case [choice, computer]
    #when ['p', 'r'], ect..
    when ['p', 'r'], ['r', 's'], ['s', 'p']
      puts "You win!"
      win = win + 1
    #When ['r','r'], ect..
    when ['p', 'p'], ['r', 'r'], ['s', 's']
      puts "You tie!"
    else
      puts "You lose!"
      loses = loses + 1
    end
    history << [choice, computer]
end

puts win
puts loses
#Declare Winner at end with score of wins and loses
if win > loses
  puts "You won the best of three!"
elsif win < loses
  puts "You lost the best of three!"
elsif win == loses
  puts "You tied the computer!"
end

#### BONUS ####
  #Show history of computer and user moves at end.
puts ''

history.each do |i|
  puts i[0] + ', ' + i[1]
end

