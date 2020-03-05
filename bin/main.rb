#!/usr/bin/env ruby is the top line
# rubocop : disable Metrics/BlockLength
require_relative '../lib/board.rb'

the_board = Board.new
exit = false

until exit
  puts the_board.display
  puts "Welcome to Luis and Oscar's Tic Tac Toe (All rights reserved 2020)"
  loop do
    puts 'Player 1 (X) name:'
    p1name = gets.chomp
    break unless p1name == ''

    puts 'Enter a valid name.'
  end

  loop do
    puts 'Player 2 (O) name:'
    p2name = gets.chomp
    break unless p2name == ''

    puts 'Enter a valid name.'
  end

  full_board = false
  player_1_wins = false
  player_2_wins = false
  valid_coords = %w[1 2 3]
  loop do
    #
    # PLAYER 1 TURN
    #

    space_occupied = true
    while space_occupied
      loop do
        puts 'Player 1: Select a row position between 1 and 3'
        player_1_row = gets.chomp
        unless valid_coords.include?(player_1_row)
          puts 'Enter a valid number.'
          next
        end
        break
      end

      loop do
        puts 'Player 1: Select a column position between 1 and 3'
        player_1_col = gets.chomp
        unless valid_coords.include?(player_1_col)
          puts 'Enter a valid number.'
          next
        end
        break
      end

      # space_occupied = board.occupied?(player_1_col, player_1_row)
      space_occupied = false
      puts "Square #{player_1_col}, #{player_1_row} is occupied. Choose an empty square." if space_occupied

    end

    board.player_move(player_1_col, player_1_row, X)
    board.display

    # player_1_wins = player_1.victory
    if player_1_wins == true
      puts 'Player 1 wins the match!'
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
    while space_occupied
      loop do
        puts 'Player 2: Select a row position between 1 and 3'
        player_2_row = gets.chomp
        unless valid_coords.include?(player_2_row)
          puts 'Enter a valid number.'
          next
        end
        break
      end

      loop do
        puts 'Player 2: Select a column position between 1 and 3'
        player_2_col = gets.chomp
        unless valid_coords.include?(player_2_col)
          puts 'Enter a valid number.'
          next
        end
        break
      end

      # space_occupied = board.occupied?(player_2_col, player_2_row)
      space_occupied = false
      puts "Square #{player_2_col}, #{player_2_row} is occupied. Choose an empty square." if space_occupied

    end

    board.player_move(player_2_col, player_2_row, O)
    board.display

    # player_1_wins = player_1.victory
    player_2_wins = true
    if player_2_wins == true
      puts 'Player 2 wins the match!'
      break
    end
    # full_board = board.isfull()
    if full_board == true
      puts "It's a draw..."
      break
    end
  end

  puts 'Play again? (Y/N)'
  exit = gets.chomp
  case exit.upcase
  when 'N'
    exit = true
  when 'Y'
    puts 'Bye!'
    exit = false
  else
    puts 'Wrong option.'
    puts 'Exit game? (Y/N)'
    exit = gets.chomp
  end
end


# rubocop : enable Metrics/BlockLength
