Class {
	#name : #NFSDirectory,
	#superclass : #Object,
	#instVars : [
		'name',
		'children'
	],
	#category : #NaiveFileSystem
}

{ #category : #storing }
NFSDirectory >> addElement: aNFSDirectory [ 
	
	self children: aNFSDirectory
]

{ #category : #accessing }
NFSDirectory >> children [
	^ children
]

{ #category : #accessing }
NFSDirectory >> children: aNFSDirectory [

	children add: aNFSDirectory
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
