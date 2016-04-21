# adds a blank line between outputs
def insert
  puts
end

# gives the user a choice and outputs a scenerio based on their choice
def enter_temple
  puts "Greetings Adventurer! After years of searching you have finally found the lost temple!"
  puts "What would you like to do? Enter or Leave?"
  enter = gets.chomp.downcase
  insert
  if enter == "enter"
  puts "Good Luck! Oh, watch out for booby traps!"
elsif
  enter == "leave"
  puts "Really...Well, it looks like your assistant pushed you in anyway!"
else
  enter = ["enter"]
  puts "Well, it looks like your assistant pushed you in!"
  end
  insert
end

# gives the user a choice and outputs a scenerio based on their choice
def direction1
  puts "After walking for a short time, the passageway splits!"
  puts "Do you want to go Left or Right?"
  player_choice1 = gets.chomp.downcase
  insert
  if player_choice1 == "left"
    puts "You walk down a long narrow path until you fall into a deep cavern: You can try climbing Up or explore the path Down?"
  elsif player_choice1 == "right"
    puts "You walk down a narrow path until you come to at set of stairs:"
  else player_choice1 == "left"
    puts "Lets just say you went left...After walking somemore, you come to a set of stairs: "
  end
  insert
end

# gives the user a choice and outputs a scenerio based on their choice
def direction2
  puts "Do you want to go Up or down?"
  player_choice2 = gets.chomp.downcase
  insert
  if player_choice2 == "up"
    puts "You come to a large chamber bursting with treasure, you see two items in the distance that catch your eye."
    puts "A Large Diamond protected by a moat and a Golden Idol that can only be reached by swinging across vines:"
  elsif player_choice2 == "down"
    puts "You find a large chamber filled with treasure, you see two items that look extremely valuable, a Large Diamond and a Golden Idol:"
  else player_choice2 == "up"
    puts "For the sake of argument, we'll say you went up...You find a chamber containing a Golden Idol and a Large Diamond:"
  end
  insert
end

# takes the user input and randomizes the results
def treasure_room
  puts "Do you go for the Diamond or the Idol?"
  player_choice3 = gets.chomp.downcase
  insert
  end_scenerios = ["Congratualations! You managed to grab your treasure and make it out alive!", "You managed to grab the treasure...unfortunately, that angered the family of attack gorillas guarding it and you're now dinner..", "As soon as you grab the artifact the entire temple starts to collapse and you are burried alive..."]
  if player_choice3 == "diamond"
    # outputs a diamond if the user selects "diamond"
    diamond
    puts end_scenerios.sample
  elsif player_choice3 == "idol"
    puts end_scenerios.sample
  else player_choice3 == "idol"
    puts "Fine, you went for the Golden Idol" + " " + end_scenerios.sample
  end
  insert
end

# outputs a pyramid
def pyramid
  rows = 10
  height = 20
  width = 40
  symbol_count = 1
  symbol = "*"
  rows.times do
  puts ("*" * symbol_count).center(width)
    symbol_count += 2
  end
  insert
end

# outputs a diamond
def diamond
  count = 3
  1.upto(count) do |i|
    i.upto(count - 1) { print " " }
      i.times { print " *" }
      print "\n"
    end
  count = count - 1
    count.downto(1) do |i|
      i.upto(count) {print " "}
      i.times {print " *"}
      print "\n"
    end
end

pyramid
enter_temple
direction1
direction2
treasure_room

# def pick(option, message)
#   if direction.nil?
#     output = message
#   else
#     output = "#{option}: #{message}"
#   end
#   puts output
# end
#
# def start_game
#   pick nil,"Greetings Adventurer! After years of searching you have finally found the lost temple!"
# end
#
# def user_choice()
#
#
# start_game
