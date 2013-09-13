module Tennis
  class Game
    attr_accessor :player1, :player2
    def initialize
      # Create two players.
      @player1 = Player.new
      @player2 = Player.new
      # Set the opponent for each player.
      @player1.opponent = @player2
      @player2.opponent = @player1
    end

    def wins_ball
      @wins += 1
    end
  end

#------------Player Class--------------#

  class Player
    attr_accessor :points, :opponent

    def initialize
      # Set points to 0
      @points = 0
    end

    # Increments the score by 1.
    #
    # Returns the integer new score.
    def record_won_ball!
      @points += 1
    end

    # Returns the String score for the player.
    def score
      return 'love' if @points == 0
    elsif @points == 2
      return 30

    else @points == 3
      return 40
    end
  end


  end
end