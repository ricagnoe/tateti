require "./lib/logica.rb"

describe "Tateti" do

	it "Jugado O marca la opción 1, 1" do
		game = Tateti.new
		game.jugada("O", 1, 1).should == 0
	end

	it "Jugado O marca la opción 3, 3" do
		game = Tateti.new
		game.jugada("O", 3, 3).should == 8
	end

end
