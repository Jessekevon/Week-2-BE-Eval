#-------------Tennis Module---------------#
# Tennis Module groups together classes, methods, and constants.

module Tennis

#------------Game Class-------------------#

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
        player1.points += 1
      else
        player2.points += 1
      end
    end
  end

#-------------Player Class---------------#

  class Player
    attr_accessor :points, :opponent

    def initialize
      @points = 0
    end

    # Increments the points by 1.
    #
    # Returns the integer new score.
    def record_won_ball!
      @points += 1
    end

    # Each player can have either of these points in one game 0 15 30 40
 
    def score
      return 'love' if @points == 0
      return 'fifteen' if @points == 1
      return 'thirty' if @points == 2
      return 'forty' if @points == 3
      return 'advantage' if player.points > opponent.points
      return 'duece' if player1.points == player2.points
      # return 'win' if player.points --- still trying to figure out how i am going to code this. 
    end
  end #--- Ends Player Class
end #--- Ends Tennis Module