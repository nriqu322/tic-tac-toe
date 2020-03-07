#!/usr/bin/env ruby
# rubocop : disable Metrics/MethodLength
require_relative '../lib/board.rb'
require_relative '../lib/players.rb'
board = Board.new

exit_game = false
p1name = ''
p2name = ''
puts "Welcome to Luis and Oscar's Tic Tac Toe (All rights reserved 2020)"

loop do
  puts 'Player 1 (X) name:'
  p1name = gets.chomp
  break unless p1name == ''

  puts 'Enter a valid name.'
end
player1 = Players.new(p1name, 'X')

loop do
  puts 'Player 2 (O) name:'
  p2name = gets.chomp
  break unless p2name == ''

  puts 'Enter a valid name.'
end
player2 = Players.new(p2name, 'O')

def player_turn(player_x, board)
  valid_coords = %w[1 2 3]
  player_col = '0'
  player_row = '0'
  space_occupied = true
  while space_occupied
    loop do
      puts "#{player_x.name}: Select a row position between 1 and 3"
      player_row = gets.chomp
      unless valid_coords.include?(player_row)
        puts 'Enter a valid number.'
        next
      end
      break
    end

    loop do
      puts "#{player_x.name}: Select a column position between 1 and 3"
      player_col = gets.chomp
      unless valid_coords.include?(player_col)
        puts 'Enter a valid number.'
        next
      end
      break
    end

    space_occupied = board.space_occupied?(player_row, player_col)
    puts "Square #{player_row}, #{player_col} is occupied. Choose an empty square." if space_occupied
  end

  board.player_move(player_col, player_row, player_x.sym)
  puts board.display
end

def player_score(player_x)
  puts "#{player_x.name} your score is #{player_x.score}"
end

until exit_game
  puts board.display
  full_board = false
  player_1_wins = false
  player_2_wins = false
  loop do
    player_turn(player1, board)

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

    player_turn(player2, board)

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

  puts 'Score Table'
  player_score(player1)
  player_score(player2)

  board.clean

  loop do
    puts 'Play again? (Y/N)'
    player_exit = gets.chomp
    case player_exit.upcase
    when 'N'
      puts 'Bye!'
      exit_game = true
      break
    when 'Y'
      exit_game = false
      break
    end
  end
end
# rubocop : enable Metrics/MethodLength
