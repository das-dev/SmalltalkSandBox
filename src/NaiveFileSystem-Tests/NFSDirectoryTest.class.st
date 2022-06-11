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

{ #category : #'tests - initial state' }
NFSDirectoryTest >> testNewDirectoryHasDefaultName [
	
	self assert: NFSDirectory new name equals: 'New Directory'
]

{ #category : #'tests - initial state' }
NFSDirectoryTest >> testNewDirectoryIsEmpty [
	
	self assert: NFSDirectory new children isEmpty
]

{ #category : #'tests - printing' }
NFSDirectoryTest >> testPrintingDirectory [

	| directory |
	directory := NFSDirectory new name: 'comics'.
	self assert: directory printString equals: 'comics'
]

{ #category : #'tests - printing' }
NFSDirectoryTest >> testPrintingNestedDirectory [

	| rootDirectory nestedDirectory |
	rootDirectory := NFSDirectory new name: 'comics'.
	nestedDirectory := NFSDirectory new name: 'oldcomics'.
	rootDirectory addElement: nestedDirectory.
	self assert: nestedDirectory printString equals: 'comics/oldcomics'
]

{ #category : #'tests - storing' }
NFSDirectoryTest >> testStoringDirectory [

	| rootDirectory nestedDirectory |
	rootDirectory := NFSDirectory new.
	nestedDirectory := NFSDirectory new.
	rootDirectory addElement: nestedDirectory.
	self assert: (rootDirectory children includes: nestedDirectory)
]
