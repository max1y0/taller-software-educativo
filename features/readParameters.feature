Feature: Detect and inform when a parameters in a module is read to user imput
		
Scenario: Reading a parameter in a function

	Given: A function with one or more parameters (parameter1..parameterN) #Es necesario abstraer la signatura
	When: There is at least one read(parameterI)
	And: with I between (1..N)
	Then: A message should print "Una función no debe modificar el entorno, la lectura del parametro se debería realizar antes de la invocación"
	
Scenario: Reading a parameter in a procedure	
	
	Given: A procedure with one or more parameters (parameter1..parameterN)
	When: There is at least one read(parameterI)
	And: with I between (1..N)	
	Then: A message should print "No es necesario leer el dato! La información viene por el parametro. La lectura se realiza en el programa principal"
	