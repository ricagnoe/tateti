require 'sinatra'
require './lib/logica.rb'
require './lib/partida.rb'

get '/' do
	@@partida = Partida.new
	erb :tateti_pablo
end

get '/:player/:cell' do

	cell = params["cell"].split("_")
	@@partida.game.jugar(cell.first.to_i,cell.last.to_i)
  	@@partida.gano(@@partida.game.ganador)
	if @@partida.game.finDePartida == 1 
		if @@partida.game.ganador == ""
			@mensaje = "EMPATE"
		else
			@mensaje = "<b style='color:green;'>Gano " + @@partida.game.ganador + "!!!!!</b>"
		end
		erb :fin_partida
	else
	erb :tateti_pablo
	end
end

get '/reset' do
	@@partida.reset
	erb :tateti_pablo
end
