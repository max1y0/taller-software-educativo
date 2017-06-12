Feature: Detect and inform when a parameer with value passing is assigned on a procedure

	Background:
		Given a excercise
		And a student writes a procedure

	Scenario: Assigning a value parameter on a procedure
		Given The profile of the procedure is 'procedure cuadrado (...;x: integer;...);'
		When There is a 'x:=' in the code
		Then A message should print "Estás asignando a un parámetro con pasaje por valor"
		And print "prestar atención si es un parametro que debe mantener el valor despues de la invocación"

	Scenario: Reading a value parameter on a procedure
		Given The profile of the procedure is 'procedure cuadrado (...;x: integer;...);'
		When There is a 'read(x)' in the code
		Then A message should print "Estás leyendo un parámetro con pasaje por valor"
		And print "prestar atención si es un parametro que debe mantener el valor despues de la invocación"
	
# no me preocupo por el mismo problema en funciones porque en el caso que se necesite una asignación en un parametro VAR
# corre por otro error, que una funcion no debe modificar el entorno.