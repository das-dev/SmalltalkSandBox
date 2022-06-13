Class {
	#name : #TemperatureConverter,
	#superclass : #Object,
	#category : #TemperatureConverter
}

{ #category : #converting }
TemperatureConverter >> convertCelsius: anInteger [ 
	
	^ anInteger * 1.8 + 32
]
