private-roel-typer
findCommonSuperclass: aCollection
	| current |
	aCollection isEmpty
		ifTrue: [ ^ nil ].
	current := aCollection first.
	aCollection do: [ :class |
		[ class includesBehavior: current ]
			whileFalse: [ current := current superclass ] ].
	^ current