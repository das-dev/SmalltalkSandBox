Class {
	#name : #TemperatureConverter,
	#superclass : #Object,
	#instVars : [
		'location',
		'measures'
	],
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

{ #category : #converting }
TemperatureConverter >> convertFahrenheitFrom: low to: high by: step [

	^ (low to: high by: step) collect: [ :each | each -> (self convertFahrenheit: each) ]
]

{ #category : #measuring }
TemperatureConverter >> dates [

	^ self measures collect: [ :each | each key asDate ]
]

{ #category : #initialization }
TemperatureConverter >> initialize [ 
	
	measures := OrderedCollection new.
]

{ #category : #accessing }
TemperatureConverter >> location [

	^ location
]

{ #category : #accessing }
TemperatureConverter >> location: anObject [

	location := anObject
]

{ #category : #measuring }
TemperatureConverter >> measureCelsius: aTemp [
	
	self measures add: DateAndTime now -> aTemp
]

{ #category : #accessing }
TemperatureConverter >> measureCount [
	
	^ self measures size
]

{ #category : #accessing }
TemperatureConverter >> measures [

	^ measures
]

{ #category : #accessing }
TemperatureConverter >> measures: anObject [

	measures := anObject
]

{ #category : #accessing }
TemperatureConverter >> temperatures [
	
	^ self measures collect: #value
]

{ #category : #accessing }
TemperatureConverter >> times [

	^ self measures collect: [ :each | each key asTime ]
]
