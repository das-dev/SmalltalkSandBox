Class {
	#name : #NFSFileTest,
	#superclass : #TestCase,
	#category : #'NaiveFileSystem-Tests'
}

{ #category : #'tests - accessing' }
NFSFileTest >> testFileHoldsName [
	
	| file  |
	file := NFSFile new name: 'astroboy'.
	self assert: file name equals: 'astroboy'
]

{ #category : #tests }
NFSFileTest >> testFileInDirectoryHasParent [

	|directory file |
	directory := NFSDirectory new.
	file := NFSFile new.
	directory addElement: file.
	self assert: file parent equals: directory
]

{ #category : #'tests - accessing' }
NFSFileTest >> testFileSize [
	
	| file |
	file := NFSFile new name: 'babar'; content: 'Babar and Celeste'.
	self assert: file size equals: 22
]

{ #category : #'tests - initial state' }
NFSFileTest >> testNewFileHasDefaultName [
	
	self assert: NFSFile new name equals: 'New File'
]

{ #category : #'tests - initial state' }
NFSFileTest >> testNewFileIsEmpty [
	
	self assert: NFSFile new content isEmpty
]

{ #category : #'tests - printing' }
NFSFileTest >> testPrintingFile [

	| file |
	file := NFSFile new name: 'astroboy'.
	self assert: file printString equals: 'astroboy'
]

{ #category : #'tests - printing' }
NFSFileTest >> testPrintingFileInDirectory [

	| directory file |
	directory := NFSDirectory new name: 'oldcomics'.
	file := NFSFile new name: 'astroboy'.
	directory addElement: file.
	self assert: file printString equals: 'oldcomics/astroboy'
]

{ #category : #'tests - finding' }
NFSFileTest >> testSearchInfFile [
	
	| file |
	file := NFSFile new content: 'Babar and Celeste'.
	self assert: (file search: 'Ba')
]

{ #category : #'tests - storing' }
NFSFileTest >> testStoringFile [

	| directory file |
	directory := NFSDirectory new.
	file := NFSDirectory new.
	directory addElement: file.
	self assert: (directory children includes: file)
]
