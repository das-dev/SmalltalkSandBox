Class {
	#name : #NFSDirectoryTest,
	#superclass : #TestCase,
	#category : #'NaiveFileSystem-Tests'
}

{ #category : #'tests - accessing' }
NFSDirectoryTest >> testDirectoryHoldsName [
	
	| directory |
	directory := NFSDirectory new.
	directory name: 'comics'.
	self assert: directory name equals: 'comics'
]

{ #category : #'tests - storing' }
NFSDirectoryTest >> testNewDirectoryIsEmpty [
	
	| directory |
	directory := NFSDirectory new.
	self assert: directory children isEmpty
]
