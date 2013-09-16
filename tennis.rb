#-------------Tennis Module---------------
# Tennis Module groups together classes, methods, and constants.

module Tennis

#------------Game Class-------------------

  class Game
    attr_accessor :player1, :player2, :wins, :opponent
    def initialize
      # Create two players.
      @player1 = Player.new
      @player2 = Player.new
      # Set the opponent for each player.
      @player1.opponent = @player2
      @player2.opponent = @player1
    end
      # Increments the points of the winning player.
    def wins_ball(wins)
      if wins == 1
        @player1.record_won_ball!
      else
        @player2.record_won_ball!
      end
    end
  end

#-------------Player Class---------------

  class Player
    attr_accessor :points, :opponent

    def initialize
      @points = 0
    end

    # Increments the points by 1.
    # Returns the integer new score.
    def record_won_ball!
      @points += 1
    end

    #Score method keeps track of the game rules for scoring.
    def score
      return 'love' if @points == 0
      return 'fifteen' if @points == 1
      return 'thirty' if @points == 2
      return 'forty' if @points == 3 && opponent.points != 3 # Three points scored by each side and a player has 1 more point than his/her opponent.
      return 'advantage' if @points > 3 && @points == opponent.points + 1  # Three points scored by each side and a player has 1 more point than his/her opponent.
      return 'deuce' if @points >= 3 && @points == opponent.points # Both players score at least 3 points and the scores are equal.
      return 'win' if @points > 3 && @points == opponent.points + 2 # The first player to have at least 4 points total and at least 2 more points than opponent.
    end
  end #--- Ends Player Class
end #--- Ends Tennis Module