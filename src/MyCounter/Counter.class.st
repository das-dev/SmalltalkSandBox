"
Counter is a simple concrete class which supports incrementing and decrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message withValue:
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter >> count [

	^ count
]

{ #category : #accessing }
Counter >> count: aValue [

	count := aValue
]

{ #category : #operations }
Counter >> decrement [
	
	self count: self count - 1
]

{ #category : #operations }
Counter >> increment [
	
	self count: self count + 1
]

{ #category : #initialization }
Counter >> initialize [
	"set the initial value of the value to 0"
	
	self count: 0
]

{ #category : #printing }
Counter >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: ' with value: ';
		nextPutAll: self count asString
]
