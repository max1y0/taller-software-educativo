Feature: Detect and inform about parameter passing on a procedure

	
	Background:
		Given a excercise
		And a student writes a procedure

	Scenario: No VAR parameter on a procedure
		Given The profile of the procedure is 'procedure proc (...;x: integer;...);'
		When There is no parameter: 'var xi: integer'
		Then A message should print "Tu procedimiento no tiene parametros con pasaje por referencia."
		And print "prestar atenci�n si necesitamos mantener las modificaciones despu�s de la invocaci�n del procedimiento"

#TODO: agregar cuando un procedimiento tiene solo un parametro var"
	Scenario: VAR parameter on a function

		Given the profile of the module is 'procedure proc (...;var x: integer;...);' 
		When There is only one parameter: 'var xi: integer'
		Then A message should print "Tu procedimiento tiene s�lo un parametro pasaje por referencia."
		And print "Se podr�a transformar en una funci�n?"