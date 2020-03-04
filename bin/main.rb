#!/usr/bin/env ruby is the top line
exit = false

until exit do
  puts "Welcome to Luis and Oscar's Tic Tac Toe All (All rights reserved 2020)"
  while true do
    puts "Player 1 (X) name:"
    p1name = gets.chomp
    if p1name == '' then
      puts "Enter a valid name."
      next
    else
      break
    end
    # player_1 = player.new(p1name)
  end

  while true do
    puts "Player 2 (O) name:"
    p2name = gets.chomp
    if p2name == '' then
      puts "Enter a valid name."
      next
    else
      break
    end
    # player_2 = player.new(p2name)
  end

  puts "Exit game? (Y/N)"
  exit = gets.chomp
  case exit
  when "Y"
    exit = true
  when "N"
    exit = false
  else 
    puts "Wrong option."
    puts "Exit game? (Y/N)"
    exit = gets.chomp  
  end
end