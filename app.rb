require 'sinatra'
require './lib/logica.rb'

get '/' do
		@@tateti = Tateti.new
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
	cell = params["cell"].split("_")
	@@tateti.jugar(cell.first.to_i,cell.last.to_i)


	erb :tateti_pablo
end
