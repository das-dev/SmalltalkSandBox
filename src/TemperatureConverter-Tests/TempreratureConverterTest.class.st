Class {
	#name : #TempreratureConverterTest,
	#superclass : #TestCase,
	#category : #'TemperatureConverter-Tests'
}

{ #category : #'tests - converting' }
TempreratureConverterTest >> testCelsiusToFahrenheit [

	| converter |
	converter := TemperatureConverter new.
	self assert: ((converter convertCelsius: 30) closeTo: 86.0 precision: 0.1)
]

{ #category : #'tests - converting' }
TempreratureConverterTest >> testFahrenheitToCelsius [

	| converter |
	converter := TemperatureConverter new.
	self assert: ((converter convertFahrenheit: 86) closeTo: 30.0 precision: 0.1).
	self assert: ((converter convertFahrenheit: 50) closeTo: 10 precision: 0.1)
]

{ #category : #'tests - converting' }
TempreratureConverterTest >> testFahrenheitToCelsiusScale [

	| converter results expectedCelsius |
	converter := TemperatureConverter new.
	results := converter convertFahrenheitFrom: 50 to: 70 by: 2.
	expectedCelsius := #( 10.0 11.1 12.2 13.3 14.4 15.5 16.6 17.7 18.8
	                      20.0 21.1 ).
	results
		with: expectedCelsius
		do: [ :res :cel | 
		self assert: (res value closeTo: cel precision: 0.1) ]
]

{ #category : #'tests - measuring' }
TempreratureConverterTest >> testLocationAndDate [

	| office |
	office := TemperatureConverter new location: 'Office'.
	"perform two measures that are logged"
	office measureCelsius: 19.
	office measureCelsius: 21.
	"We got effectively two measures"
	self assert: office measureCount equals: 2.
	"All the measures were done today"
	self assert: office dates equals: {Date today . Date today} asOrderedCollection.
	"We logged the correct temperature"
	self assert: office temperatures equals: { 19 . 21 } asOrderedCollection
]
