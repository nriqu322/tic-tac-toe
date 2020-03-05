#!/usr/bin/env ruby is the top line
# rubocop : disable Metrics/BlockLength
require_relative '../lib/board.rb'
require_relative '../lib/players.rb'
board = Board.new

exit_game = false
p1name = ""
p2name = ""
puts "Welcome to Luis and Oscar's Tic Tac Toe (All rights reserved 2020)"
puts board.display
loop do
  puts 'Player 1 (X) name:'
  p1name = gets.chomp
  break unless p1name == ''

  puts 'Enter a valid name.'
end
player1 = Players.new(p1name, "X")

loop do
  puts 'Player 2 (O) name:'
  p2name = gets.chomp
  break unless p2name == ''

  puts 'Enter a valid name.'
end
player2 = Players.new(p2name, "O")

until exit_game
  full_board = false
  player_1_wins = false
  player_2_wins = false
  valid_coords = %w[1 2 3]
  loop do
    #
    # PLAYER 1 TURN
    #
    player_1_col = '0'
    player_1_row = '0'
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

      space_occupied = board.space_occupied?(player_1_row, player_1_col)
      puts "Square #{player_1_col}, #{player_1_row} is occupied. Choose an empty square." if space_occupied
    end

    board.player_move(player_1_col, player_1_row, player1.sym)
    puts board.display

    player_1_wins = board.check_symbol_victory(player1.sym)
    if player_1_wins == true
      puts "#{player1.name} wins the match!"
      player1.inc_score
      break
    end

    full_board = board.isfull?
    if full_board == true
      puts "It's a draw..."
      break
    end

    #
    # PLAYER 2 TURN
    #

    player_2_col = '0'
    player_2_row = '0'
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

      space_occupied = board.space_occupied?(player_2_row, player_2_col)
      puts "Square #{player_2_col}, #{player_2_row} is occupied. Choose an empty square." if space_occupied

    end

    board.player_move(player_2_col, player_2_row, player2.sym)
    puts board.display

    player_2_wins = board.check_symbol_victory(player2.sym)
    if player_2_wins == true
      puts "#{player2.name} wins the match!"
      player2.inc_score
      break
    end
    full_board = board.isfull?
    if full_board == true
      puts "It's a draw..."
      break
    end
  end

  puts "Score Table"
  puts "#{player1.name} your score is #{player1.score}"
  puts "#{player2.name} your score is #{player2.score}"
  
  loop do
    puts 'Play again? (Y/N)'
    player_exit = gets.chomp
    case player_exit.upcase
    when 'N'
      exit_game = true
      break
    when 'Y'
      puts 'Bye!'
      exit_game = false
      break
    end  
  end
end


# rubocop : enable Metrics/BlockLength
