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

{ #category : #defaults }
NFSDirectory >> defaultName [
	
	^ 'New Directory'
]

{ #category : #initialization }
NFSDirectory >> initialize [ 
	
	super initialize.
	name := self defaultName.
	children := OrderedCollection new.
]

{ #category : #accessing }
NFSDirectory >> internalSize [
	
	^ 4
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

	self parent ifNotNil: [ 
		self parent printOn: aStream.
		aStream << '/' ].
	aStream << self name
]

{ #category : #'finding/searching' }
NFSDirectory >> search: query [

	^ self children select: [ :each | each search: query ]
]

{ #category : #accessing }
NFSDirectory >> size [

	^ self name size + (self children sum: #size) + self internalSize
]
