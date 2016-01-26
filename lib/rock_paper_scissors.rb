class RockPaperScissors

	# Exceptions this class can raise:
	class NoSuchStrategyError < StandardError
		def initialize(msg = "Strategy must be one of R,P,S")
			super msg			
		end
	end

	def self.winner(player1, player2)
		table = Hash[
			0 => [player1,player2,player1],
			1 => [player1,player1,player2],
			2 => [player2,player1,player1]
		]
		lookup = Hash['R'=>0, 'P'=>1, 'S'=>2]

		if !lookup.has_key?(player1.last) or !lookup.has_key?(player2.last)
			raise NoSuchStrategyError
		end

		return table[lookup[player1.last]][lookup[player2.last]]
	end

	def self.tournament_winner(tournament)
		return self.winner(tournament[0], tournament[1]) if tournament.flatten.size==4
    self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
	end

end
