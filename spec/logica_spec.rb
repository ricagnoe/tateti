require "./lib/logica.rb"

describe "Tateti" do

	it "Jugador O marca la opción 1, 1" do
		game = Tateti.new
		game.jugar(1,1)
		game.jugada(1, 1).should == "O"
	end

	it "Jugador X marca la opción 3, 3" do
		game = Tateti.new
		game.jugar(1,1)
		game.jugar(3,3)
		game.jugada(3, 3).should == "X"
	end

	it "Jugador O marca 1, 1 y marca 1, 2 y marca 1, 3" do
		game = Tateti.new
		game.jugar(1,1)
		game.jugar(2,1)
		game.jugar(1,2)
		game.jugar(3,3)
		game.jugar(1,3)
		game.ganador.should  == "O"
	end

	it "Jugador O marca 1, 1 y marca 2, 1 y marca 3, 1" do
		game = Tateti.new
		game.jugar(1,1)
		game.jugar(2,2)
		game.jugar(2,1)
		game.jugar(3,3)
		game.jugar(3,1)
		game.ganador.should  == "O"
	end

	it "Jugador O marca 1, 1 y marca 2, 2 y marca 3, 3" do
		game = Tateti.new
		game.jugar(1,1)
		game.jugar(2,3)
		game.jugar(2,2)
		game.jugar(1,3)
		game.jugar(3,3)
		game.ganador.should  == "O"
	end
	
	it "Jugador O marca 1, 3 y marca 2, 2 y marca 3, 1" do
		game = Tateti.new
		game.jugar(1,3)
		game.jugar(2,3)
		game.jugar(2,2)
		game.jugar(1,1)
		game.jugar(3,1)
		game.ganador.should  == "O"
	end

end
