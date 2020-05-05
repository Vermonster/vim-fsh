" Vim syntaxtax file
" Language: FHIR Shorthand (FSH) language
" Maintainer: Brian Kaney
" Latest Revision: 0.0.2

if exists("b:current_syn")
  finish
endif

syntax keyword FshKeyword   Alias CodeSystem Expression Extension Description
syntax keyword FshKeyword   Id Instance InstanceOf Invariant Mapping Mixins
syntax keyword FshKeyword   Parent Profile RuleSet Severity Source Target Title
syntax keyword FshKeyword   Usage ValueSet XPath

syntax keyword FshReserved  and codes "contains" example exclude extensible from
syntax keyword FshReserved  includes is-a is-not-a named obeys only or preferred
syntax keyword FshReserved  system required units valueset where D MS N SU TU

syntax keyword FshBool      true false
syntax keyword FshTodo      contained TODO FIXME XXX TBD

syntax match FshToken /\*|:|=|->/
syntax match FshCode  /#[^ ]*/
syntax match FshUrl   /https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/

syntax region  FshComment   start=+/\*+ end=+\*/+ contains=FshTodo,@Spell fold extend keepend
syntax region  FshComment   start='^//\s' end=/$/ contains=FshTodo,@Spell fold extend keepend
syntax region  FshString	  start='"' end='"' skip='\\"' contains=FshEscape

" Setup the highlighting links
hi link FshKeyword    Keyword
hi link FshCode       Identifier
hi link FhsToken      Type
hi link FshComment    Comment
hi link FshTodo       Todo
hi link FshBool       Boolean
hi link FshString     String
hi link FshReserved   Error
hi link FshUrl        Underlined
hi link FshEscape     Special
