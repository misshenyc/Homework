class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
      # system("clear")
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1 
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      # sleep 1
      # system("clear")
      # sleep 1
    end
  end

  def require_sequence
    puts "repeat what you just saw using color word with space in between, like 'red blue' "
    @seq.each do |color|
      guess = gets.chomp
      if color.first != guess
        @game_over = true
      end
    end
    # sleep 1
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "you win this round"
  end

  def game_over_message
    puts "game over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
