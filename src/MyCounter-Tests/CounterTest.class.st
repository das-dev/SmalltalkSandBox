Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'MyCounter-Tests'
}

{ #category : #'tests - accessing' }
CounterTest >> testCountIsSetAndRead [

	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
]

{ #category : #'tests - operations' }
CounterTest >> testDecrement [

	| c |
	c := Counter new.
	c
		count: 2;
		decrement;
		decrement.
	self assert: c count equals: 0
]

{ #category : #'tests - operations' }
CounterTest >> testIncrement [

	| c |
	c := Counter new.
	c
		count: 0;
		increment;
		increment.
	self assert: c count equals: 2
]

{ #category : #'tests - printing' }
CounterTest >> testPrinting [
	
	| c |
	c := Counter new.
	c count: 2.
	self assert: c printString equals: 'a Counter with value: 2'
]
