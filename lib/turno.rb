class Turno
	def initialize
		@jugador = "O"
		@@cont = 0
	end
	def jugador
		@jugador
	end
	def cambiaTurno
		if @jugador == "O"
			@jugador = "X"
		else
			@jugador = "O"
		end

		@@cont= @@cont + 1
	end

	def getCantTurnos
		return @@cont
	end
end
