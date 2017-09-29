require 'sinatra'
require './lib/logica.rb'
require './lib/partida.rb'

get '/' do
		@@tateti = Tateti.new
		@@partida = Partida.new
		@@score_X = @@partida.score("X") 
		@@score_O = @@partida.score("O") 
    erb :tateti_pablo
end

get '/:player/:cell' do
	cell = params["cell"].split("_")
	@@tateti.jugar(cell.first.to_i,cell.last.to_i)
	if @@tateti.ganador != nil
		@@partida.ganador(@@tateti.ganador)
	end

	erb :tateti_pablo
end
