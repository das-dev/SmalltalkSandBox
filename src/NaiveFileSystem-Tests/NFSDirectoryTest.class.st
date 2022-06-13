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

{ #category : #'tests - accessing' }
NFSDirectoryTest >> testDirectorySizeWithFiles [
	
	| root file |
	root := NFSDirectory new name: 'oldcomics'.
	file := NFSFile new name: 'astroboy'; content: 'super cool robot'.
	root addElement: file.
	self assert: root size equals: 37
]

{ #category : #'tests - accessing' }
NFSDirectoryTest >> testDirectorySizeWithNestedDirectories [
	
	| root nested |
	root := NFSDirectory new name: 'comics'.
	nested := NFSDirectory new name: 'oldcomics'.
	root addElement: nested.
	self assert: root size equals: 23
]

{ #category : #'tests - accessing' }
NFSDirectoryTest >> testEmptyDirectorySize [
	
	| directory |
	directory := NFSDirectory new name: 'comics'.
	self assert: directory size equals: 10
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
