require './lib/turno.rb'	

class Tateti
	def initialize
		@matrix = Array.new(9)
		@turno = Turno.new
		@@cont = 0
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
		for fila in 1..3
			if  @matrix[(fila-1)*3] != nil and @matrix[(fila-1)*3] == @matrix[((fila-1)*3)+1] and @matrix[((fila-1)*3)+1] == @matrix[((fila-1)*3)+2]
				return @matrix[(fila-1)*3]
			end
		end
		
		for col in 1..3
			if @matrix[col-1] != nil and @matrix[col-1] == @matrix[(col-1)+3] and @matrix[(col-1)+3] == @matrix[(col-1)+6]
				return @matrix[col-1]
			end
		end
		
		if @matrix[0] != nil and @matrix[0] == @matrix[4] and @matrix[4] == @matrix[8]
				return @matrix[0]
		end
		
		if @matrix[2] != nil and @matrix[2] == @matrix[4] and @matrix[4] == @matrix[6]
				return @matrix[2]
		end	
		return ""
	end

	def finDePartida
	  if ganador == "X" or ganador == "O" or @turno.getCantTurnos == 9
	    return 1
	  else
	    return 0
	  end
	end

end
