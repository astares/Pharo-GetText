"
An in-memory model for a Portable Object (*.pot) template file 
"
Class {
	#name : #POTemplateFile,
	#superclass : #POFile,
	#instVars : [
		'translations'
	],
	#category : #'Gettext-Core-Model'
}

{ #category : #defaults }
POTemplateFile class >> fileExtension [
	"The file extension for a portable object template file is *.pot"
	
	^'pot'
]

{ #category : #accessing }
POTemplateFile >> addTranslation: aPOTranslation [

	^self translations at: aPOTranslation id put: aPOTranslation 
]

{ #category : #initialization }
POTemplateFile >> initialize [
	super initialize.
	translations := Dictionary new
]

{ #category : #'private - accessing' }
POTemplateFile >> translations [

	^translations
]
