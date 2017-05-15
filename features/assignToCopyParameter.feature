Feature: Detect and inform when a parameer with value passing is assigned on a procedure
Scenario: Assigning a value parameter on a procedure

	Given: A procedure with one or more value parameter(parameter1..parameterN)
	When: There is at least one assignment to a parameterI
	And: with I between (1..N)
	Then: A message should print "Estás asignando a un parámetro con pasaje por valor"
	And: print "prestar atención si es un parametro que debe mantener el valor despues de la invocación"
	
# no me preocupo por el mismo problema en funciones porque en el caso que se necesite una asignación en un parametro VAR
# corre por otro error, que una funcion no debe modificar el entorno.