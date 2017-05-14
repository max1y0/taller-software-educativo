Feature: Detect and inform when something is written on screen.
		
Scenario: writing on screen on a function

	Given: A function 
	When: There is at least one write or writeln
	Then: A message should print "Una función no debe modificar el entorno, la escritura a pantalla debería realizarse fuera del módulo"
	
Scenario: Writing on screen on a procedure
	
	Given: A procedure 
	When: There is at least one write	
	Then: A message should print "No se debería escribir información en pantalla. La información se actualiza en los parametros para ser usada fuera del módulo"
	