Feature: detect and inform when a global variable is used on a module

	Background:
		Given a excercise
		And a student defines a global variable "a"
		And a student writes a module (procedure or function)


#TODO: subdividir segun el acceso, si es asignaci�n, escritura, usado en una expresi�n, etc. Usar scenario outline para espeficicar si es procedimiento o funci�n"
	Scenario: A global variable is used on a function
		Given the profile of the module is "function inc();"
		When the module acceses the variable "a"		
		Then Print "Est�s usando una variable global en tu funci�n. Es realmente necesario? Considerar pasarla por parametro!"

	Scenario: A global variable is used on a procedure
		Given the profile of the module is "procedure inc();"
		When the module acceses the variable "a"		
		Then Print "Est�s usando una variable global en un procedimiento. Es realmente necesario? Considerar pasarla por parametro!"