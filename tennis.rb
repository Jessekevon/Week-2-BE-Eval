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

    def wins_ball(wins)
      # Increment the points of the winning player.
      if wins == 1
        player1.points += 1
      else
        player2.points += 1
    end
  end
end

  class Player
    attr_accessor :points, :opponent

    def initialize
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
    end
  end
end

# When you run the spec in that repo, 
# You'll notice that some of the code has already been written for us. 
# A couple of tests are pending, and a few fail. Use the tests as a guide for completing the rest of the kata. 
# Not all of the tests have been provided for you - you'll have to add a few of your own in order to properly
# Return scores of "advantage", "duece", or "win".