Given(/^abro la pagina$/) do
  visit '/'
end

Then(/^dice "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end


Then(/^tiene que decir "(.*?)"$/) do |txtTurno|
  last_response.should have_xpath( "//div[@id=\"title\"]") do |div|
		div.should contain(txtTurno)
	end
end

When(/^el jugador "(.*?)" elije la fila (\d+) y la columna (\d+)$/) do |player, fila, columna|
	 click_link("#{player}_#{fila}_#{columna}")
end

Then(/^la celda de la fila (\d+) y la columna (\d+) muestra "(.*?)"$/) do |fila, columna, player|
   cell = "td_#{fila}_#{columna}"
	 last_response.should have_xpath( "//td[@id=\"#{cell}\"]") do |td|
		td.should contain(player)
	end
end

Then(/^el ganador tiene que decir "(.*?)"$/) do |ganador|
  	last_response.should have_xpath( "//div[@id=\"ganador\"]") do |div|
		div.should contain(ganador)
	end
end







