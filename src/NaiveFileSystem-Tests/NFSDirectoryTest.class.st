Class {
	#name : #NFSDirectoryTest,
	#superclass : #TestCase,
	#category : #'NaiveFileSystem-Tests'
}

{ #category : #'tests - accessing' }
NFSDirectoryTest >> testDirectoryHoldsName [
	
	| directory |
	directory := NFSDirectory new name: 'comics'.
	self assert: directory name equals: 'comics'
]

{ #category : #tests }
NFSDirectoryTest >> testNestedDirectoryHasParent [

	| rootDirectory nestedDirectory |
	rootDirectory := NFSDirectory new.
	nestedDirectory := NFSDirectory new.
	rootDirectory addElement: nestedDirectory.
	self assert: nestedDirectory parent equals: rootDirectory
]

{ #category : #'tests - storing' }
NFSDirectoryTest >> testNewDirectoryIsEmpty [
	
	self assert: NFSDirectory new children isEmpty
]

{ #category : #'tests - printing' }
NFSDirectoryTest >> testPrinting [

	| directory |
	directory := NFSDirectory new name: 'comics'.
	self assert: directory printString equals: 'comics'
]

{ #category : #'tests - storing' }
NFSDirectoryTest >> testStoringNewDirectory [

	| rootDirectory nestedDirectory |
	rootDirectory := NFSDirectory new.
	nestedDirectory := NFSDirectory new.
	rootDirectory addElement: nestedDirectory.
	self assert: (rootDirectory children includes: nestedDirectory)
]
