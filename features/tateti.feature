Feature: Tateti

Scenario: levantar sitio
	Given abro la pagina
	Then dice "Tateti"

Scenario: Mostrar turno O
	Given abro la pagina
	Then tiene que decir "O"

Scenario: Mostrar turno X
	Given abro la pagina
	When hago click en O
	Then tiene que decir "X"

Scenario: Elijo una opción
	Given abro la pagina
	When el jugador "O" elije la fila 1 y la columna 1 
	Then la celda de la fila 1 y la columna 1 muestra "O"

Scenario: Elijo una opción
	Given abro la pagina
	When el jugador "O" elije la fila 1 y la columna 3 
	Then la celda de la fila 1 y la columna 3 muestra "O"

Scenario: Elijo una opción
	Given abro la pagina
	When el jugador "O" elije la fila 1 y la columna 1 
	And el jugador "X" elije la fila 1 y la columna 2
	Then la celda de la fila 1 y la columna 2 muestra "X"

Scenario: Elijo una opción
	Given abro la pagina
	When el jugador "O" elije la fila 1 y la columna 1 
	And el jugador "X" elije la fila 1 y la columna 2
	And el jugador "O" elije la fila 1 y la columna 3 
	Then la celda de la fila 1 y la columna 3 muestra "O"
