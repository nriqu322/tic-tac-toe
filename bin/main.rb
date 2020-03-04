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

  full_board = false
  player_1_wins = false
  player_2_wins = false
  while true do
    while true do
      puts "Player 1 1select a row position between 1 and 3"
      play_row_1 = gets.chomp
      unless play_row_1 == "1" || play_row_1 == "2" || play_row_1 == "3"
        puts "enter a valid number"
        next
      end
      break
    end
    puts "Player 1 select a column position between 1 and 3"
    play_col_1 = gets.chomp

    # player_1_wins = player_1.victory
    if player_1.victory == true
      puts "Player 1 win the match"
      break
    end
    # full_board = board.isfull()
    if board.isfull == true
      puts "It's a draw"
      break
    end

    puts "Player 2 1select a row position between 1 and 3"
    play_row_2 = gets.chomp
    puts "Player 2 select a column position between 1 and 3"
    play_col_2 = gets.chomp

    # player_2_wins = player_2.victory
    if player_2.victory == true
      puts "Player 2 win the match"
      break
    end
    # full_board = board.isfull()
    if board.isfull == true
      puts "It's a draw"
      break
    end
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