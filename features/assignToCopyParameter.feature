Feature: Detect and inform when a parameer with value passing is assigned on a procedure

	Background:
		Given a excercise
		And a student writes a procedure

	Scenario: Assigning a value parameter on a procedure
		Given The profile of the procedure is 'procedure cuadrado (...;x: integer;...);'
		When There is a 'x:=' in the code
		Then A message should print "Est�s asignando a un par�metro con pasaje por valor"
		And print "prestar atenci�n si es un parametro que debe mantener el valor despues de la invocaci�n"

	Scenario: Reading a value parameter on a procedure
		Given The profile of the procedure is 'procedure cuadrado (...;x: integer;...);'
		When There is a 'read(x)' in the code
		Then A message should print "Est�s leyendo un par�metro con pasaje por valor"
		And print "prestar atenci�n si es un parametro que debe mantener el valor despues de la invocaci�n"
	
# no me preocupo por el mismo problema en funciones porque en el caso que se necesite una asignaci�n en un parametro VAR
# corre por otro error, que una funcion no debe modificar el entorno.