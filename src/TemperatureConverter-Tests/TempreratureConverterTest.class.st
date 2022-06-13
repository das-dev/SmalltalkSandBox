Class {
	#name : #TempreratureConverterTest,
	#superclass : #TestCase,
	#category : #'TemperatureConverter-Tests'
}

{ #category : #'tests - converting' }
TempreratureConverterTest >> testCelsiusToFahrenheit [

	| converter |
	converter := TemperatureConverter new.
	self assert: (converter convertCelsius: 30) equals: 86.0
]
