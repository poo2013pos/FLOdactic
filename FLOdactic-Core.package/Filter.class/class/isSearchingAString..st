as yet unclassified
isSearchingAString: input
	"Checks if the filter's input parameter is null/empty and raises an error if so"
	| isInvalid |
	(isInvalid := input isString not) ifFalse: [
		isInvalid := input isEmpty
	].

	isInvalid ifTrue: [self error: 'Invalid filter expression. It must be a string'].
	^ isInvalid