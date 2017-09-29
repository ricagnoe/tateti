class Partida
	def initialize
		@@score_O = 0
		@@score_X = 0
	end

	def score jugador
		if jugador == "X"
			return @@score_X
		else
			return @@score_O
		end
	end

	def gano jugador
		if jugador == "X"
			@@score_X +=1
			return @@score_X
		else
			@@score_O +=1
			return @@score_O
		end
	end

	def reset
		@@score_X = 0
		@@score_O = 0
	end

end
