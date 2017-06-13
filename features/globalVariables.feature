Feature: detect and inform when a global variable is used on a module

	Background:
		Given a excercise
		And a student defines a global variable "a"
		And a student writes a module (procedure or function)


#TODO: no hace falta dividirlo, preguntar por module o por function or procedure

	Scenario: A global variable is used on a function
		Given the profile of the module is "function inc();"
		When the module acceses the variable "a"		
		Then Print "Estás usando una variable global en tu función. Es realmente necesario? Considerar pasarla por parametro!"

	Scenario: A global variable is used on a procedure
		Given the profile of the module is "procedure inc();"
		When the module acceses the variable "a"		
		Then Print "Estás usando una variable global en un procedimiento. Es realmente necesario? Considerar pasarla por parametro!"

#TODO