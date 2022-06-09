Class {
	#name : #NFSDirectory,
	#superclass : #Object,
	#instVars : [
		'name',
		'children'
	],
	#category : #NaiveFileSystem
}

{ #category : #accessing }
NFSDirectory >> children [
	^ children
]

{ #category : #initialization }
NFSDirectory >> initialize [ 
	
	super initialize.
	children := OrderedCollection new
]

{ #category : #accessing }
NFSDirectory >> name [
	^ name
]

{ #category : #accessing }
NFSDirectory >> name: aName [
	name := aName
]
