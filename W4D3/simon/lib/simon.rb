class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @seq = []
    @sequence_length = 1

  end

  def play
    self.take_turn until @game_over == true

  end

  def take_turn
    
   
    
    self.show_sequence
    self.require_sequence
    self.round_success_message
    @sequence_length += 1

   if @game_over == true
      self.game_over_message
      self.reset_game
    end
  
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence

  end

  def add_random_color
   @seq << COLORS.sample
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
