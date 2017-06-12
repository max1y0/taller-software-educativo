Feature: Detect and inform about parameter passing is on a function

	Background:
		Given a excercise
		And a student writes a module (procedure or function)	

	Scenario: VAR parameter on a function

		Given the profile of the module is 'function funcion (...;x: integer;...);' 
		When There is no parameter: 'var xi: integer'
		Then: A message should print "Una función no debe modificar el entorno."
		And: print "No deberías contar con un parametro con pasaje por referencia."

