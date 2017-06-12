Feature: Detect and inform when a parameters in a module is read to user input

	Background:
		Given a excercise
		And a student writes a module (procedure or function)
		
	Scenario: Reading a parameter in a function

		Given the profile of the module is "function funcion (...;x: integer;...);" 
		When There is a "read(x)" in the code
		Then A message should print "Una función no debe modificar el entorno, la lectura del parametro se debería realizar antes de la invocación"
		
	Scenario: Reading a parameter in a procedure	
		
		Given The profile of the procedure is "procedure proc (...;x: integer;...);"
		When There is a "read(x)" in the code
		Then A message should print "Es necesario leer el dato? La información viene por el parametro. Esto es solo permisible si es una acción sólo de carga de datos"
	