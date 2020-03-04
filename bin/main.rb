#!/usr/bin/env ruby is the top line
exit = false

until exit do
  puts "Welcome to Luis and Oscar's Tic Tac Toe (All rights reserved 2020)"
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
    #
    # PLAYER 1 TURN
    #

    space_occupied = true
    while space_occupied do
      while true do
        puts "Player 1: Select a row position between 1 and 3"
        play_row_1 = gets.chomp
        unless play_row_1 == "1" || play_row_1 == "2" || play_row_1 == "3"
          puts "Enter a valid number."
          next
        end
        break
      end

      while true do
        puts "Player 1: Select a column position between 1 and 3"
        play_col_1 = gets.chomp
        unless play_col_1 == "1" || play_col_1 == "2" || play_col_1 == "3"
          puts "Enter a valid number."
          next
        end
        break
      end

      # space_occupied = board.occupied?(play_col_1, play_row_1)
      space_occupied = false
      if space_occupied 
        puts "Square #{play_col_1}, #{play_row_1} is occupied. Choose an empty square."
      end

    end

    # board.display

    # player_1_wins = player_1.victory
    if player_1_wins == true
      puts "Player 1 wins the match!"
      break
    end
    # full_board = board.isfull()
    if full_board == true
      puts "It's a draw..."
      break
    end

    #
    # PLAYER 2 TURN
    #

    space_occupied = true
    while space_occupied do
      while true do
        puts "Player 2: Select a row position between 1 and 3"
        play_row_2 = gets.chomp
        unless play_row_2 == "1" || play_row_2 == "2" || play_row_2 == "3"
          puts "Enter a valid number."
          next
        end
        break
      end

      while true do
        puts "Player 2: Select a column position between 1 and 3"
        play_col_2 = gets.chomp
        unless play_col_2 == "1" || play_col_2 == "2" || play_col_2 == "3"
          puts "Enter a valid number."
          next
        end
        break
      end

      # space_occupied = board.occupied?(play_col_2, play_row_2)
      space_occupied = false
      if space_occupied 
        puts "Square #{play_col_2}, #{play_row_2} is occupied. Choose an empty square."
      end

    end

    # board.display

    # player_1_wins = player_1.victory
    player_2_wins = true
    if player_2_wins == true
      puts "Player 2 wins the match!"
      break
    end
    # full_board = board.isfull()
    if full_board == true
      puts "It's a draw..."
      break
    end

  end

  puts "Play again? (Y/N)"
  exit = gets.chomp
  case exit.upcase
  when "N"
    exit = true
  when "Y"
    puts "Bye!"
    exit = false
  else 
    puts "Wrong option."
    puts "Exit game? (Y/N)"
    exit = gets.chomp  
  end
end