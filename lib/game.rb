class Game
  attr_accessor :p1, :p2, :board

  def initialize()
    @p1 = Player.new('X')
    @p2 = Player.new('O')
    @board = Board.new()
  end

  def play_game()
    @board.display_state
    while true
      puts("\nX, your turn")
      if !@board.change_state(@p1.choose_box, @p1.mark)
        puts "\nThat cell is already selected!"

      end
      @board.display_state
      if game_over? == 'won'
        @p1.score += 1
        puts "\nX won!"
        break
      elsif game_over? == 'tie'
        puts "\nIt's a tie!"
        break
      end

      puts("\nO, your turn")
      if !@board.change_state(@p2.choose_box, @p2.mark)
        puts "\nThat cell is already selected!"
        @board.change_state(@p2.choose_box, 'O')
      end
      @board.display_state
      if game_over? == 'won'
        @p2.score += 1
        puts "\nY won!"
        break
      elsif game_over? == 'tie'
        puts "\nIt's a tie!"
        break
      end
    end
  end

  def game_over?()
    # Check rows
    3.times do |i|
      return "won" if @board.state[i][0] == @board.state[i][1] && @board.state[i][1] == @board.state[i][2] && @board.state[i][0] != "-"
    end

    # Check columns
    3.times do |i|
      return 'won' if @board.state[0][i] == @board.state[1][i] && @board.state[1][i] == @board.state[2][i] && @board.state[0][i] != "-"
    end

    # Check diagonals
    return 'won' if @board.state[0][0] == @board.state[1][1] && @board.state[1][1] == @board.state[2][2] && @board.state[0][0] != "-"
    return 'won' if @board.state[0][2] == @board.state[1][1] && @board.state[1][1] == @board.state[2][0] && @board.state[0][2] != "-"

    # Check for a tie
    return 'tie' if @board.state.all? { |row| row.none?("-") }

    false
  end
end
