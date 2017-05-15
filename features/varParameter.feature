Feature: Detect and inform when a VAR parametir is on a function

Scenario: VAR parameter on a function

	Given: A procedure with one or more parameter (parameter1..parameterN)
	When: There is at least a parameterI with reference passing
	And: with I between (1..N)
	Then: A message should print "Una función no debe modificar el entorno."
	And: print "No deberías contar con un parametro con pasaje por referencia."