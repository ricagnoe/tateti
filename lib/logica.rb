require './lib/turno.rb'	

class Tateti
	def initialize
		@matrix = Array.new(9)
		@turno = Turno.new
	end

	def jugar (fila, columna)
		pos = ((fila - 1) * 3) + columna - 1
		@matrix[pos] = @turno.jugador
		@turno.cambiaTurno
		return pos
	end

	def jugada (fila,columna)
		pos = ((fila - 1) * 3) + columna - 1
		if @matrix[pos]  == nil
			return "<a href='/#{@turno.jugador}/#{fila}_#{columna}' id='#{@turno.jugador}_#{fila}_#{columna}'>[ ]</a>"	
		else 
			return @matrix[pos] 
		end
	end
	
	def turno
		return @turno
	end

	def ganador
		if @matrix[0] == @matrix[1] and @matrix[1] == @matrix[2]
			return @matrix[0]
		else
			return ""
		end
	end

end
