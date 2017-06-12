Feature: Detect and inform when something is written on screen.

	Background:
		Given a excercise
		And a student writes a module (procedure or function)
			
#TODO, se podría optimizar con scenario outlines con el tipo de modulo y el mensaje de salida.
	Scenario: writing on screen on a function

		Given The module is a function
		When There is a 'write('
		And When There is a 'writeln('
		Then A message should print "Una función no debe modificar el entorno, la escritura a pantalla debería realizarse fuera del módulo"
		
	Scenario: Writing on screen on a procedure
		
		Given The module is a procedure 
		When There is a 'write('
		And When There is a 'writeln('	
		Then A message should print "No se debería escribir información en pantalla. La información se actualiza en los parametros para ser usada fuera del módulo"
		