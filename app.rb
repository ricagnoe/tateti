require 'sinatra'
require './lib/turno.rb'

get '/turno' do
	
	@@turno.cambiaTurno
	erb :tateti_pablo
end


get '/' do
		@@turno = Turno.new
		@@td_1_1 = "<a href='/O/1_1' id='O_1_1'>[ ]</a>"
		@@td_1_2 = "<a href='/O/1_2' id='O_1_2'>[ ]</a>"
		@@td_1_3 = "<a href='/O/1_3' id='O_1_3'>[ ]</a>"
		@@td_2_1 = "<a href='/O/2_1' id='O_2_1'>[ ]</a>"
		@@td_2_2 = "<a href='/O/2_2' id='O_2_2'>[ ]</a>"
		@@td_2_3 = "<a href='/O/2_3' id='O_2_3'>[ ]</a>"
		@@td_3_1 = "<a href='/O/3_1' id='O_3_1'>[ ]</a>"
		@@td_3_2 = "<a href='/O/3_2' id='O_3_2'>[ ]</a>"
		@@td_3_3 = "<a href='/O/3_3' id='O_3_3'>[ ]</a>"
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

	if cell == "2_1"
		@@td_2_1 = @player
	elsif cell == "2_2"
		@@td_2_2 = @player
	elsif cell == "2_3"
		@@td_2_3 = @player
	end

	if cell == "3_1"
		@@td_3_1 = @player
	elsif cell == "3_2"
		@@td_3_2 = @player
	elsif cell == "3_3"
		@@td_3_3 = @player
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

		if @@td_2_1.length > 1
			@@td_2_1 = "<a href='/#{@player}/2_1' id='#{@player}_2_1'>[ ]</a>"
		end
		
		if @@td_2_2.length > 1
			@@td_2_2 = "<a href='/#{@player}/2_2' id='#{@player}_2_2'>[ ]</a>"
		end

		if @@td_2_3.length > 1
			@@td_2_3 = "<a href='/#{@player}/2_3' id='#{@player}_2_3'>[ ]</a>"
		end

		if @@td_3_1.length > 1
			@@td_3_1 = "<a href='/#{@player}/3_1' id='#{@player}_3_1'>[ ]</a>"
		end
		
		if @@td_3_2.length > 1
			@@td_3_2 = "<a href='/#{@player}/3_2' id='#{@player}_3_2'>[ ]</a>"
		end

		if @@td_3_3.length > 1
			@@td_3_3 = "<a href='/#{@player}/3_3' id='#{@player}_3_3'>[ ]</a>"
		end

	erb :tateti_pablo

end
