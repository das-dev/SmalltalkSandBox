Class {
	#name : #NFSFile,
	#superclass : #Object,
	#instVars : [
		'name',
		'content',
		'parent'
	],
	#category : #NaiveFileSystem
}

{ #category : #accessing }
NFSFile >> content [

	^ content
]

{ #category : #accessing }
NFSFile >> content: aText [
	
	content := aText 
]

{ #category : #defaults }
NFSFile >> defaultName [
	
	^ 'New File'
]

{ #category : #initialization }
NFSFile >> initialize [
	
	super initialize.
	self name: self defaultName.
	self content: ''
]

{ #category : #accessing }
NFSFile >> name [

	^ name
]

{ #category : #accessing }
NFSFile >> name: aName [
 
	name := aName
]

{ #category : #accessing }
NFSFile >> parent [

	^ parent
]

{ #category : #accessing }
NFSFile >> parent: aNFSDirectory [ 

	parent := aNFSDirectory
]

{ #category : #printing }
NFSFile >> printOn: aStream [
	
	self parent ifNotNil: [
		 self parent printOn: aStream.
		 aStream << '/' ].
	aStream << self name
]

{ #category : #accessing }
NFSFile >> size [
	
	^ self name size + self content size
]
