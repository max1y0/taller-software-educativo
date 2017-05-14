Feature: detect and inform when a global variable is used on a module

Scenario: A global variable is used on a function or procedure
	
		Given: A global variable A
		And: A funcion or procedure Module1
		When: Module1 acceses the variable A		#No subdivido en distintos usos, porque el mensaje ser�a el mismo
		Then: Print "Est�s usando una variable global en un m�dulo. Es realmente necesario? Considerar pasarla por parametro!"