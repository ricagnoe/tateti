require './lib/turno.rb'

describe "Turno" do

	it "should start with O" do
		turno = Turno.new
		turno.jugador.should == "O"
	end

	it "juega jugardor O y cambia a jugardor X" do
		turno = Turno.new
		turno.cambiaTurno()
		turno.jugador.should == "X"
	end

	it "juega jugardor X cambia a jugardor O" do
		turno = Turno.new
		turno.cambiaTurno()
		turno.cambiaTurno()
		turno.jugador.should == "O"
	end

	it "Empieza el turno en 0" do
		turno = Turno.new
		turno.getCantTurnos.should == 0
	end

	it "Cuenta Turnos" do
		turno = Turno.new
		turno.cambiaTurno()
		turno.getCantTurnos.should == 1
	end
end
