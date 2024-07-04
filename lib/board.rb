class Board
  attr_reader :state

  def initialize()
    @state = Array.new(3){Array.new(3, "-")}
  end

  def display_state()
    puts @state.map {|item| item.join(" ")}
  end

  def change_state(action, mark)
    if @state[action[0]][action[1]] == '-'
      @state[action[0]][action[1]] = mark
    else
      false
    end
  end
end

# demo = Board.new()
# puts demo.display_state
# demo.change_state([1,1], 'X')
# puts demo.display_state
