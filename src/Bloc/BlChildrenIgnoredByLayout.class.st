"
I represent a subset of children that are ignored by layout.

Example:
[[[
| element |
element := BlElement new.
element children ignoredByLayout
]]]
"
Class {
	#name : #BlChildrenIgnoredByLayout,
	#superclass : #BlChildrenSubset,
	#category : 'Bloc-Basic-Children'
}

{ #category : #'children - subsets' }
BlChildrenIgnoredByLayout >> ignoredByLayout [
	^ self
]

{ #category : #accessing }
BlChildrenIgnoredByLayout >> name [
	^ 'Ignored by layout'
]

{ #category : #initialization }
BlChildrenIgnoredByLayout >> subsetFrom: aBlChildren [
	^ aBlChildren select: [ :anElement | anElement constraints ignoredByLayout ]
]
