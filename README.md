# Ruby Tic-Tac-Toe

A simple command-line implementation of the classic Tic-Tac-Toe game in Ruby, as a part of The Odin Project.

## Features

- Two-player gameplay
- Interactive command-line interface
- Validates moves and prevents overwriting occupied cells
- Detects wins and ties

## How to Run

1. Ensure you have Ruby installed on your system.
2. Clone this repository.
3. Navigate to the project directory.
4. Run the game:

   ```
   ruby main.rb
   ```

## Game Rules

- Players take turns marking cells on a 3x3 grid.
- First player uses 'X', second player uses 'O'.
- To make a move, enter the coordinates (e.g., "1,1" for the center cell).
- The game ends when a player gets three in a row or the board is full.

## Project Structure

- `main.rb`: Entry point of the game
- `lib/game.rb`: Game logic and flow
- `lib/board.rb`: Board state and display
- `lib/player.rb`: Player actions and input

Enjoy the game!