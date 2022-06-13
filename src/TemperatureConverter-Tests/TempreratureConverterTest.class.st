Class {
	#name : #TempreratureConverterTest,
	#superclass : #TestCase,
	#category : #'TemperatureConverter-Tests'
}

{ #category : #'tests - converting' }
TempreratureConverterTest >> testCelsiusToFahrenheit [

	| converter |
	converter := TemperatureConverter new.
	self assert: (converter convertCelsius: 30) equals: 86.0.
]

{ #category : #'tests - converting' }
TempreratureConverterTest >> testFahrenheitToCelsius [

	| converter |
	converter := TemperatureConverter new.
	self assert: (converter convertFahrenheit: 86) equals: 30.0
]
