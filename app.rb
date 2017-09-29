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
	erb :tateti_pablo
end
