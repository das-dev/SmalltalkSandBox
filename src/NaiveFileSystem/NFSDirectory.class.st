Class {
	#name : #NFSDirectory,
	#superclass : #Object,
	#instVars : [
		'name',
		'children',
		'parent'
	],
	#category : #NaiveFileSystem
}

{ #category : #storing }
NFSDirectory >> addElement: aNFSDirectory [ 
	
	aNFSDirectory parent: self.
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

{ #category : #accessing }
NFSDirectory >> parent [

	^ parent
]

{ #category : #accessing }
NFSDirectory >> parent: aNFSDirectory [ 

	parent := aNFSDirectory
]

{ #category : #printing }
NFSDirectory >> printOn: aStream [
	
	aStream << self name
]
