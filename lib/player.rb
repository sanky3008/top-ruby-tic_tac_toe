class Player
  attr_accessor :mark, :score

  def initialize(mark)
    @mark = mark
    @score = 0
  end

  def choose_box()
    puts "\nPlease choose a cell and enter its coordinates. For example, 1,1 for the middle cell."
    ans = gets.chomp().split(',').map(){|item| item.to_i}

    if ans.reduce(0){|a, i| a += i} > 4
      puts "\nNo cell index can be > 2, please try again"
      ans = self.choose_box()
    end

    ans
  end
end


# p = Player.new()
# puts p.choose_box
