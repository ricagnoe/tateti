require 'sinatra'
require './lib/logica.rb'

get '/' do
		@@tateti = Tateti.new
    erb :tateti_pablo
end

get '/:player/:cell' do
	cell = params["cell"].split("_")
	@@tateti.jugar(cell.first.to_i,cell.last.to_i)


	erb :tateti_pablo
end
