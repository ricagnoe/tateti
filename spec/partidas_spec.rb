require './lib/partida.rb'

describe "Partida" do

	it "should start with 0-0" do
		partida = Partida.new
		partida.score("O").should == 0
		partida.score("X").should == 0	
	end

	it "Inicia Partida y Gana X " do
		partida = Partida.new
		partida.gano("X").should == 1
		partida.score("X").should == 1
		partida.score("O").should == 0	
	end

	it "Inicia Partida y Gana X y despues gana O" do
		partida = Partida.new
		partida.gano("X").should == 1
		partida.gano("O").should == 1
		partida.score("X").should == 1
		partida.score("O").should == 1	
	end

	it "Inicia Partida y Gana X y despues se reinicia la partida" do
		partida = Partida.new
		partida.gano("X").should == 1
		partida.reset
		partida.score("O").should == 0	
		partida.score("X").should == 0	
	end

end
