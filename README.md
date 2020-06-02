# Tic-tac-toe
This is a replica of the game Tic tac toe.

Rules of the Game:

1. The game is played on a grid that's 3 squares by 3 squares.
2. One player is X and the other is O. Players take turns putting their marks in empty squares.
3. The first player to get 3 of her marks in a row (up, down, across, or diagonally) is the winner.
4. When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a tie.

# From the Odin Project
*Link to the [requirements](https://www.theodinproject.com/courses/ruby-programming/lessons/oop) in the Odin Project*

## Live Demo

[![Run on Repl.it](https://repl.it/badge/github/nriqu322/tic-tac-toe)](https://repl.it/@nriqu322/tic-tac-toe)

## Prerequisites
* Ruby installed: *Please go to this [link](https://www.theodinproject.com/courses/web-development-101/lessons/installing-ruby) if you need to install ruby*

## How to play
* Step 1: run the game with `./main.sh`, you will be prompted for the players names. 
``` 
$ ./main.sh
Welcome to Luis and Oscar's Tic Tac Toe (All rights reserved 2020)
Player 1 (X) name:
Luis
Player 2 (O) name:
Oscar
``` 
* Step 2: After you enter the names it's player 1's turn. Select an empty square introducing first the row and then the column.
``` 
  c1  c2  c3
r1   |   |  
  ---+---+---
r2   |   |  
  ---+---+---
r3   |   |  

Luis: Select a row position between 1 and 3
1
Luis: Select a column position between 1 and 3
1
``` 
* Step 3: Now it's player 2's turn.
``` 
Oscar: Select a row position between 1 and 3
2
Oscar: Select a column position between 1 and 3
2
  c1  c2  c3
r1 X |   |  
  ---+---+---
r2   | O |  
  ---+---+---
r3   |   |  
``` 
* Step 4: Each player take turns until one of them wins.
``` 
  c1  c2  c3
r1 X | X | X
  ---+---+---
r2   | O |  
  ---+---+---
r3   |   | O

Luis wins the match!
Score Table
Luis your score is 1
Oscar your score is 0
``` 
* Step 5: It's a draw if the board is full and no one wins.
``` 
  c1  c2  c3
r1 X | O | X
  ---+---+---
r2 X | O | O
  ---+---+---
r3 O | X | X

It's a draw...
Score Table
Luis your score is 0
Oscar your score is 0
``` 
* Step 6: You can continue playing as many matches as you want by pressing: Y
``` 
Play again? (Y/N)
Y
  c1  c2  c3
r1   |   |  
  ---+---+---
r2   |   |  
  ---+---+---
r3   |   |  

Luis: Select a row position between 1 and 3
``` 
* Step 7: Or you can exit the game pressing: N
```
Play again? (Y/N)
N
Bye!
``` 
## Made with
* Ruby
* Rubocop

## Run test
In your terminal run :

``` 
  rspec
``` 

## Authors ![Hireable](https://img.shields.io/badge/HIREABLE-YES-yellowgreen&?style=for-the-badge)

👤 **Luis Saavedra**

- Github: [@nriqu322](https://github.com/nriqu322)
- Twitter: [@nriqu322](https://twitter.com/nriqu322)
- Linkedin: [Luis Saavedra](https://linkedin.com/in/luis-saavedra-sanchez/)

👤 **Oscar Mier**

- Github: [@voscarmv](https://github.com/voscarmv)
- Twitter: [@voscarmv](https://twitter.com/voscarmv)
- Linkedin: [Oscar Mier](https://www.linkedin.com/in/oscar-mier-072984196/) 

## Contributing

Contributions, issues and feature requests are welcome!

Feel free to check [here](../../issues/) for issues.

## Show your support
Give a ⭐️ if you like this project!