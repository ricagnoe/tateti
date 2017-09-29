require 'sinatra'

get '/turno' do
	if @@turno == "turno jugador B"
	 	@@turno="turno jugador A"
	else
	 	@@turno="turno jugador B"
	end 
	erb :tateti_pablo
end


get '/' do
		@@turno="turno jugador A"
		@@td_1_1 = "<a href='/O/1_1' id='O_1_1'>[ ]</a>"
		@@td_1_2 = "<a href='/O/1_2' id='O_1_2'>[ ]</a>"
		@@td_1_3 = "<a href='/O/1_3' id='O_1_3'>[ ]</a>"
    erb :tateti_pablo
end

get '/:player/:cell' do
	@player = params["player"]
	cell = params["cell"]

	if cell == "1_1"
		@@td_1_1 = @player
	elsif cell == "1_2"
		@@td_1_2 = @player
	elsif cell == "1_3"
		@@td_1_3 = @player
	end
	
	if @player == "O"
		@player = "X"
	else
		@player = "O"
	end

		if @@td_1_1.length > 1
			@@td_1_1 = "<a href='/#{@player}/1_1' id='#{@player}_1_1'>[ ]</a>"
		end
		
		if @@td_1_2.length > 1
			@@td_1_2 = "<a href='/#{@player}/1_2' id='#{@player}_1_2'>[ ]</a>"
		end

		if @@td_1_3.length > 1
			@@td_1_3 = "<a href='/#{@player}/1_3' id='#{@player}_1_3'>[ ]</a>"
		end

	erb :tateti_pablo

end
