Class {
	#name : #TemperatureConverter,
	#superclass : #Object,
	#category : #TemperatureConverter
}

{ #category : #converting }
TemperatureConverter >> convertCelsius: anInteger [ 
	
	^ anInteger * 1.8 + 32
]

{ #category : #converting }
TemperatureConverter >> convertFahrenheit: anInteger [ 

	^ anInteger - 32 / 1.8
]
