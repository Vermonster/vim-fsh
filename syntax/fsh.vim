" Vim syntaxtax file
" Language: FHIR Shorthand (FSH) language
" Maintainer: Brian Kaney
" Latest Revision: 0.0.1

if exists("b:current_syn")
  finish
endif

syntax keyword FshKeyword   Profile Extension SimpleElement ComplexElement
syntax keyword FshKeyword   Parent Mixin Mixins Id Title Description Datatype
syntax keyword FshKeyword   Property Element Abstract Entry Group Rules
syntax keyword FshKeyword   Instance InstanceOf Invariant Expression Severity
syntax keyword FshKeyword   XPath Mapping Source Target Metadata Slice ValueSet
syntax keyword FshKeyword   Language Alias

syntax keyword FshReserved  from 'contains' only obeys includes or and required preferred extensible MS SU
syntax keyword FshBool      true false
syntax keyword FshTodo      contained TODO FIXME XXX TBD

syntax match FshToken /\\\?!\|\*/
syntax match FshCode  /#[^\s]*/
syntax match FshUrl   /https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/

syntax region  FshComment        start=+/\*+ end=+\*/+ contains=FshCommentTodo,@Spell fold extend keepend
syntax region  FshComment        start='^//\s' end=/$/ contains=FshCommentTodo,Spell fold extend keepend

" Setup the highlighting links
hi link FshKeyword    Keyword
hi link FshCode		    Identifier
hi link FhsToken	    Type
hi link FshComment	  Comment
hi link FshTodo	      Todo
hi link FshBool	      Boolean
hi link FshString	    String
hi link FshReserved	  Error
hi link FshUrl        Underlined
