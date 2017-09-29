class Turno
	def initialize
		@jugador = "O"
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
	end
end
