class Tateti
	def initialize
		@@matrix = Array.new(9)
	end

	def jugada jugador, fila, columna
		pos = ((fila - 1) * 3) + columna - 1
		@@matrix[pos] = jugador
		return pos
	end
end
