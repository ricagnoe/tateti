require 'sinatra'
require './lib/logica.rb'
require './lib/partida.rb'

get '/' do
	@@partida = Partida.new
	@@score_X = @@partida.score("X") 
	@@score_O = @@partida.score("O") 
    	erb :tateti_pablo
end

get '/:player/:cell' do

	cell = params["cell"].split("_")
	@@partida.game.jugar(cell.first.to_i,cell.last.to_i)

	erb :tateti_pablo
end
