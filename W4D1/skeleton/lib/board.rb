class Board
  attr_accessor :cups, :name1, :name2

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){[]}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    cups.each do |cup|
      4.times do 
        cup << :stone
      end
    end
    cups[6] = []
    cups[13] = []
  end

  def valid_move?(start_pos)
    raise ArgumentError.new "Invalid starting cup" if start_pos > 12 || start_pos < 0
    raise ArgumentError.new "Starting cup is empty" if self.cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = cups[start_pos]
    cups[start_pos] = []
    i = start_pos + 1
    until stones.empty?
      i += 1
      i %= 13
      if current_player_name == name1
        cups[i] << stones.shift if i != 13
      elsif current_player_name == name2
        cups[i] << stones.shift if i != 6
      end
    end
    render
    next_turn(i-1)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif cups[ending_cup_idx].count == 1
      :switch
    else 
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    cups[0..5].all? {|cup| cup.empty?} || cups[7..12].all? {|cup| cup.empty?}
  end

  def winner
    case cups[6].count <=> cups[13].count
    when 0
      :draw
    when -1
      @name2
    when 1
      @name1
    end
  end
end
