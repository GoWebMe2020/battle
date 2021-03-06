class Game

    attr_reader :current_turn

    def initialize(player1, player2)
        @players = [player1, player2]
        @current_turn = player1
    end

    # This code is an attempt to remove the global variable

    # def self.create(player1, player2)
    #     @game = Game.new(player1, player2)
    # end

    # def self.instance
    #     @game
    # end

    def player1
        @players.first
    end

    def player2
        @players.last
    end

    def switch_turn
        @current_turn = opponent_of(current_turn)
    end

    def opponent_of(player)
        players_who_are_not(player).first
    end

    def game_over?
        losing_players.any?
    end

    def loser
        losing_players.first
    end

    private

    attr_reader :players

    def losing_players
        players.select { |player| player.health <= 0 }
    end

    def players_who_are_not(the_player)
        players.select { |player| player != the_player}
    end

end